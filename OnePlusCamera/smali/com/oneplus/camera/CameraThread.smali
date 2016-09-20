.class public Lcom/oneplus/camera/CameraThread;
.super Lcom/oneplus/base/BaseThread;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraThread$35;,
        Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;,
        Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;,
        Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;,
        Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;,
        Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;,
        Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;,
        Lcom/oneplus/camera/CameraThread$VideoParams;,
        Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    }
.end annotation


# static fields
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

.field private static final MSG_SCREEN_SIZE_CHANGED:I = 0x2710

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

.field public static final SETTINGS_KEY_RAW_CAPTURE:Ljava/lang/String; = "RawCapture"

.field public static final SETTINGS_KEY_SHUTTER_SOUND:Ljava/lang/String; = "ShutterSound"

.field private static final STORAGE_RESERVED_SPACE_PHOTO:J = 0x6400000L

.field private static final STORAGE_RESERVED_SPACE_VIDEO:J = 0x6400000L

.field private static final THRESHOLD_INVALID_VIDEO_DURATION:J = 0x3e8L

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FAST:J = 0xfL

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FASTEST:J = 0xaL


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

.field protected m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

.field private m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

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

.field private m_Settings:Lcom/oneplus/camera/Settings;

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
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v1, Lcom/oneplus/camera/CameraDeviceManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/CameraDeviceManagerBuilder;-><init>()V

    aput-object v1, v0, v12

    new-instance v1, Lcom/oneplus/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;-><init>()V

    aput-object v1, v0, v10

    const/4 v1, 0x3

    new-instance v2, Lcom/oneplus/camera/io/FileManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/io/FileManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/oneplus/camera/FocusControllerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/FocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 141
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 145
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Camera"

    const-class v2, Lcom/oneplus/camera/Camera;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 149
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraPreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 153
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "CaptureRotation"

    const-class v8, Lcom/oneplus/base/Rotation;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    sget-object v11, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 157
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 161
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 165
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 169
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "MediaResultInfo"

    const-class v8, Lcom/oneplus/camera/MediaResultInfo;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    .line 173
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaType"

    const-class v2, Lcom/oneplus/camera/media/MediaType;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 177
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PhotoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PhotoCaptureState"

    const-class v2, Lcom/oneplus/camera/PhotoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 193
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 197
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureState"

    const-class v2, Lcom/oneplus/camera/VideoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 207
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "BurstPhotoReceived"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 211
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraError"

    const-class v2, Lcom/oneplus/camera/CameraEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    .line 215
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureStarted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 219
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpenFailed"

    const-class v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 223
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "DefaultPhotoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 227
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "DefaultVideoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 231
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 235
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 239
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 243
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 247
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 627
    const-string v0, "ShutterSound"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    const-string v0, "RawCapture"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 640
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 259
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 261
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    .line 293
    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 299
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    .line 303
    new-instance v0, Lcom/oneplus/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$1;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    .line 314
    new-instance v0, Lcom/oneplus/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$2;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 322
    new-instance v0, Lcom/oneplus/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$3;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 330
    new-instance v0, Lcom/oneplus/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$4;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 339
    new-instance v0, Lcom/oneplus/camera/CameraThread$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$5;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 350
    new-instance v0, Lcom/oneplus/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$6;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    .line 358
    new-instance v0, Lcom/oneplus/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$7;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 367
    new-instance v0, Lcom/oneplus/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$8;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 375
    new-instance v0, Lcom/oneplus/camera/CameraThread$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$9;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 383
    new-instance v0, Lcom/oneplus/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$10;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 391
    new-instance v0, Lcom/oneplus/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$11;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 399
    new-instance v0, Lcom/oneplus/camera/CameraThread$12;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$12;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 641
    if-nez p1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    .line 644
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/CameraThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removeVideoCaptureHandler(Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/base/component/ComponentManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/CameraThread;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->resetCapturingRawPhotoProperty(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/OperationState;
    .param p3, "x3"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->enableVideoSnapshot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureCompleted(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Landroid/util/Size;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;[ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # [Z
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/oneplus/camera/CameraThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraError(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/CameraThread;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method private bindToHighComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 708
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/io/FileManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/io/FileManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    .line 709
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$15;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 719
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$16;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 728
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$17;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 737
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$18;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 751
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/media/AudioManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    .line 752
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    if-eqz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 762
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    .line 770
    :cond_2
    :goto_2
    return-void

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToInitialComponents() - No FileManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 769
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToInitialComponents() - No AudioManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindToInitialComponents()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v2, Lcom/oneplus/camera/CameraDeviceManager;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraDeviceManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    .line 683
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v1, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$14;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CameraDeviceManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 693
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v2, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/CameraDeviceManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    .line 701
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "bindToInitialComponents() - No CameraDeviceManager"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 698
    goto :goto_0
.end method

.method private bindToNormalComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/FocusController;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusController;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 778
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$19;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$19;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/location/LocationManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/location/LocationManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    .line 794
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToNormalComponents() - No LocationManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToNormalComponents() - No FocusController"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)Z
    .locals 9
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1013
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1014
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1015
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1016
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1017
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1020
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1023
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v0, v1, v3}, Lcom/oneplus/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1024
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "capturePhotoInternal() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1028
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1029
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1030
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1031
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1049
    :goto_0
    return v3

    .line 1036
    :cond_0
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v1, v8, :cond_2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_2

    .line 1041
    :cond_1
    const/16 v2, 0x2738

    const-wide/16 v6, 0x1e

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1045
    :cond_2
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v8

    .line 1049
    goto :goto_0
.end method

.method private capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "isFocusFinished"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 869
    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 870
    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 871
    iput-boolean v9, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 874
    sget-object v10, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v7}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v7

    aget v7, v10, v7

    packed-switch v7, :pswitch_data_0

    .line 882
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "capturePhotoInternal() - Capture state is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1005
    :goto_0
    return v9

    .line 879
    :pswitch_0
    if-eqz p2, :cond_0

    .line 887
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "capturePhotoInternal() - Handle : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", focus finished : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 891
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_1

    .line 893
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - No primary camera"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 899
    :cond_1
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v7, v10, :cond_2

    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v7, v10, :cond_2

    .line 901
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - Video recording not ready , cancel snaphot."

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 907
    :cond_2
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v10}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 910
    if-nez p2, :cond_4

    .line 912
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 913
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-gtz v7, :cond_4

    .line 915
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - No enough storage space"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 917
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v7, v8, :cond_3

    .line 918
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 920
    :cond_3
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 926
    :cond_4
    if-nez p2, :cond_6

    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v10, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v7, v10, :cond_5

    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v10, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-ne v7, v10, :cond_6

    .line 930
    :cond_5
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "capturePhotoInternal() - Waiting for focus complete"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move v9, v8

    .line 932
    goto/16 :goto_0

    .line 936
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v10, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v7, v10, :cond_9

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v7, v10, :cond_7

    iget v7, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_9

    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 941
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v10, "capturePhotoInternal() - Lock focus"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v10, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    move v6, v8

    .line 943
    .local v6, "waitForLock":Z
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    invoke-interface {v7, v9}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 944
    if-eqz v6, :cond_9

    .line 946
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "capturePhotoInternal() - Waiting for focus lock"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move v9, v8

    .line 948
    goto/16 :goto_0

    .end local v6    # "waitForLock":Z
    :cond_8
    move v6, v9

    .line 942
    goto :goto_1

    .line 953
    :cond_9
    const/4 v4, 0x0

    .line 957
    .local v4, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_start_0
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 958
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v7, :cond_a

    .line 959
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v11, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 962
    :cond_a
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 964
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    move-object v4, v0

    .line 965
    iget-object v7, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    iget v10, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v7, v2, p1, v10}, Lcom/oneplus/camera/PhotoCaptureHandler;->capture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 967
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "capturePhotoInternal() - Capture process is handled by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v7, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    iput-object v7, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    .line 969
    iget-object v7, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v10, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v11, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v7, v10, v11}, Lcom/oneplus/camera/PhotoCaptureHandler;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 974
    :cond_b
    if-nez v4, :cond_e

    .line 976
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v10, "capturePhotoInternal() - Use default capture process"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 978
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Fail to use default photo capture process."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 984
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - Fail to capture"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 986
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v7, v8, :cond_11

    .line 987
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 972
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "i":I
    :cond_c
    const/4 v4, 0x0

    .line 962
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 979
    :cond_d
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 994
    :cond_e
    iput-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 995
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 996
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 997
    sget-object v7, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v9, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v9, v10}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v7, v9}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 998
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 999
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1000
    :cond_f
    iget v7, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v7, v8, :cond_10

    iget-boolean v7, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v7, :cond_10

    .line 1002
    iput-boolean v8, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1003
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v7}, Lcom/oneplus/camera/io/FileManager;->pauseInsert()V

    :cond_10
    move v9, v8

    .line 1005
    goto/16 :goto_0

    .line 989
    .end local v5    # "i":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_11
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "isShutterSoundPlayed"    # Z

    .prologue
    .line 1104
    sget-object v1, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureVideoInternal() - Video capture state is "

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

    .line 1113
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return v0

    .line 1109
    :pswitch_0
    if-eqz p2, :cond_0

    .line 1115
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 1116
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v8, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - No primary camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v0, 0x0

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v11, p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->params:Lcom/oneplus/camera/CameraThread$VideoParams;

    .line 1123
    .local v11, "params":Lcom/oneplus/camera/CameraThread$VideoParams;
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Handle : "

    const-string v3, ", resolution : "

    iget-object v4, v11, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    const-string v5, ", shutter sound played : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    if-nez p2, :cond_3

    .line 1129
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1130
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - No enough storage space"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1134
    const/4 v0, 0x0

    goto :goto_0

    .line 1138
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->prepareVideoFilePath()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1139
    const/4 v0, 0x0

    goto :goto_0

    .line 1143
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1146
    const-wide/16 v12, 0x0

    .line 1147
    .local v12, "shutterSoundTime":J
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1149
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1154
    :cond_4
    if-nez p2, :cond_7

    .line 1157
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, v11, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1160
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    .line 1163
    .local v10, "mediaRecorder":Landroid/media/MediaRecorder;
    const/4 v0, 0x0

    invoke-interface {v8, v10, v0}, Lcom/oneplus/camera/Camera;->bindMediaRecorder(Landroid/media/MediaRecorder;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1165
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1166
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1167
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1171
    :cond_5
    invoke-direct {p0, v8, v10, v11}, Lcom/oneplus/camera/CameraThread;->prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Fail to prepare media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :try_start_0
    invoke-virtual {v10}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1186
    :goto_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1187
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1188
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1178
    :catch_0
    move-exception v9

    .line 1180
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Error when release"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    throw v0

    .line 1190
    :cond_6
    iput-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1193
    const-wide/16 v0, 0x12c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    sub-long v6, v0, v2

    .line 1194
    .local v6, "delay":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_7

    .line 1196
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureVideoInternal() - Start video recording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1198
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1204
    .end local v6    # "delay":J
    .end local v10    # "mediaRecorder":Landroid/media/MediaRecorder;
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->startVideoRecording(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1206
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Fail to start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1208
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1210
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1211
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1212
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1213
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1217
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    .line 1220
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1221
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1222
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1223
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {v1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1226
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    .line 1229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkRemainingMediaCountInternal()V
    .locals 4

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1255
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    .line 1258
    .local v0, "freeSpace":J
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingPhotoCount(J)V

    .line 1259
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingVideoDuration(J)V

    .line 1260
    return-void
.end method

.method private checkRemainingPhotoCount(J)V
    .locals 9
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1267
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1268
    cmp-long v1, p1, v6

    if-gtz v1, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "checkRemainingPhotoCount() - Storage is full"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1287
    :goto_0
    return-void

    .line 1276
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1277
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1279
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "checkRemainingPhotoCount() - No primary camera"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1285
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

    .line 1286
    .local v2, "fileSize":J
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    div-long v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkRemainingVideoDuration(J)V
    .locals 11
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1294
    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1295
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 1297
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - Storage is full"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1324
    :goto_0
    return-void

    .line 1303
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1304
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1306
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1312
    :cond_1
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1313
    .local v4, "videoSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1314
    .local v1, "profile":Landroid/media/CamcorderProfile;
    if-nez v1, :cond_2

    .line 1316
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - Cannot create camcorder profile"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1322
    :cond_2
    const-wide/16 v6, 0x1

    invoke-static {v1, v6, v7}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateVideoFileSize(Landroid/media/CamcorderProfile;J)J

    move-result-wide v2

    .line 1323
    .local v2, "dataSize":J
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    div-long v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkVideoRecordingLimitation()V
    .locals 9

    .prologue
    const/16 v8, 0x272e

    .line 1331
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1333
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1334
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1335
    .local v0, "duration":J
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    div-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1337
    :cond_1
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1338
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1339
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1340
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1343
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "checkVideoRecordingLimitation() - Storage limitation reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
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
    .line 1382
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1384
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1385
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method private closeCamerasInternal()V
    .locals 4

    .prologue
    .line 1404
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "closeCamerasInternal() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1406
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1407
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1406
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1408
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "closeCamerasInternal() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 1414
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1416
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1422
    :cond_0
    return-void

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "closeVideoFileDescriptor() - Error, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z
    .locals 7
    .param p1, "captureHandler"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p4, "checkHandles"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1473
    if-nez p2, :cond_0

    .line 1475
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Capture handle is null, skip"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :goto_0
    return v2

    .line 1479
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    sget-object v3, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1590
    :goto_1
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v3, :cond_1

    .line 1592
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1593
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v2}, Lcom/oneplus/camera/io/FileManager;->resumeInsert()V

    .line 1597
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1487
    :pswitch_0
    if-eqz p4, :cond_3

    .line 1489
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eq v3, p1, :cond_2

    .line 1491
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handler : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1494
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq p2, v3, :cond_3

    .line 1496
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1502
    :cond_3
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1505
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v3, :cond_4

    .line 1506
    sget-object v3, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1509
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v3, v3, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 1511
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1513
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_5

    .line 1514
    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 1518
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1521
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-eqz v3, :cond_6

    .line 1522
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/PhotoCaptureHandler;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1525
    :cond_6
    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1526
    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 1529
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_7

    .line 1531
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Complete video snapshot"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v3, v4, :cond_7

    .line 1533
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v3, v4, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 1535
    :cond_7
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_8

    .line 1536
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1538
    :cond_8
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1544
    :pswitch_1
    if-eqz p4, :cond_a

    .line 1546
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    if-eq v3, p1, :cond_9

    .line 1548
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handler : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1551
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eq p2, v3, :cond_a

    .line 1553
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1560
    :cond_a
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1563
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    if-nez v3, :cond_b

    .line 1564
    sget-object v3, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {v4, p2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1567
    :cond_b
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_c

    .line 1570
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/MediaResultInfo;

    .line 1571
    .local v1, "info":Lcom/oneplus/camera/MediaResultInfo;
    sget-object v3, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/media/MediaEventArgs;

    iget-object v5, v1, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-direct {v4, p2, v6, v5, v6}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1573
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1577
    .end local v1    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_c
    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1578
    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1581
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_d

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_d

    .line 1582
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1584
    :cond_d
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1482
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
    .line 1604
    sparse-switch p2, :sswitch_data_0

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCamcorderProfile() - Unknown video size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1607
    :sswitch_0
    const/16 v0, 0xf00

    if-ne p1, v0, :cond_0

    .line 1608
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1612
    :sswitch_1
    const/16 v0, 0x780

    if-ne p1, v0, :cond_0

    .line 1613
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1617
    :sswitch_2
    const/16 v0, 0x500

    if-ne p1, v0, :cond_0

    .line 1618
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1622
    :sswitch_3
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_0

    .line 1623
    const/16 v0, 0x3ea

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1604
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
    .line 1663
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1664
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1668
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1670
    :cond_0
    return-void
.end method

.method private getFreeSpace()J
    .locals 4

    .prologue
    .line 1719
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v1, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 1723
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    .line 1728
    :goto_1
    return-wide v2

    .line 1722
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1728
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J
    .locals 3
    .param p1, "totalFreeSpace"    # J
    .param p3, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 1737
    if-nez p3, :cond_0

    .line 1746
    .end local p1    # "totalFreeSpace":J
    :goto_0
    return-wide p1

    .line 1739
    .restart local p1    # "totalFreeSpace":J
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1742
    :pswitch_0
    const-wide/32 v0, 0x6400000

    sub-long/2addr p1, v0

    goto :goto_0

    .line 1744
    :pswitch_1
    const-wide/32 v0, 0x7800000

    sub-long/2addr p1, v0

    goto :goto_0

    .line 1739
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
    .line 1733
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
    .line 1811
    .local p1, "oldCameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .local p2, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1813
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1814
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1816
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1817
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1818
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1819
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1820
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1811
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1823
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1825
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1826
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1828
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1829
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1830
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1831
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1832
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1823
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1837
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1838
    return-void
.end method

.method private onCameraError(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1844
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraError() - Camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CameraEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/CameraEventArgs;-><init>(Lcom/oneplus/camera/Camera;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1849
    :cond_0
    return-void
.end method

.method private onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpenFailed() - Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1856
    return-void
.end method

.method private onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    .line 1862
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1867
    :goto_0
    return-void

    .line 1866
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "prevState"    # Lcom/oneplus/camera/OperationState;
    .param p3, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 1874
    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v2, :cond_3

    .line 1876
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1878
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 1879
    .local v1, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v2, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v2, p1, :cond_0

    .line 1881
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraPreviewStateChanged() - Continue stopping preview for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1883
    iget-object v2, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v3, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, p1, v2, v3}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    .line 1876
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1886
    .end local v1    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p3, :cond_3

    .line 1946
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1891
    :cond_3
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v2, :cond_6

    .line 1893
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1895
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 1896
    .local v1, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v2, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v2, p1, :cond_4

    .line 1898
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraPreviewStateChanged() - Continue starting preview for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1900
    iget-object v2, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    iget-object v3, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    iget v4, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    .line 1893
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1903
    .end local v1    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_5
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_2

    .line 1908
    .end local v0    # "i":I
    :cond_6
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1912
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1915
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    .line 1917
    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq p3, v2, :cond_7

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v2, :cond_8

    .line 1919
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "onCameraPreviewStateChanged() - Release media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1921
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1926
    :cond_8
    iget v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 1927
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1930
    :cond_9
    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v2, :cond_b

    .line 1933
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_a

    .line 1934
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1935
    :cond_a
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v2, v3, :cond_2

    .line 1936
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1941
    :cond_b
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_c

    .line 1942
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1943
    :cond_c
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v2, v3, :cond_2

    .line 1944
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private onCaptureCompleted(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1953
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1954
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1955
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1956
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1957
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1960
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1965
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1968
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1969
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1972
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;)Z

    .line 1973
    return-void
.end method

.method private onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 1980
    return-void
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 1987
    sget-object v0, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onFocusStateChanged() - Continue capturing photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    .line 1994
    :cond_0
    return-void
.end method

.method private onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderErrorReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :goto_0
    return-void

    .line 2008
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2017
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2011
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : MEDIA_ERROR_SERVER_DIED, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2014
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : MEDIA_RECORDER_ERROR_UNKNOWN, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2008
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

    .line 2030
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :goto_0
    return-void

    .line 2037
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2051
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderInfoReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2040
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Max duration reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2044
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Max file size reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    if-eqz v0, :cond_1

    .line 2046
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2037
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 10
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2060
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2063
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 2066
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2068
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v9

    .line 2069
    .local v9, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v9, :cond_3

    array-length v0, v9

    if-ne v0, v3, :cond_3

    .line 2070
    aget-object v0, v9, v4

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 2076
    .end local v9    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v0, v3, :cond_2

    .line 2078
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v4}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 2080
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2084
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/MediaResultInfo;

    .line 2085
    .local v8, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-nez v8, :cond_6

    .line 2087
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2088
    new-instance v1, Lcom/oneplus/camera/io/PhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2100
    :goto_1
    return-void

    .line 2072
    .end local v8    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v9    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - Invalid picture planes"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2091
    .end local v9    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .restart local v8    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v0

    if-nez v0, :cond_5

    .line 2092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread;->m_LastBurstPhotoTime:J

    .line 2093
    :cond_5
    new-instance v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-wide v4, p0, Lcom/oneplus/camera/CameraThread;->m_LastBurstPhotoTime:J

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v6

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera;

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/camera/io/BurstPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;JILandroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2096
    :cond_6
    iget-object v0, v8, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 2097
    new-instance v0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v3, v8, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/net/Uri;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2099
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - No output URI specified, no need to save picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 8
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2105
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "onRawPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2108
    const/4 v1, 0x0

    .line 2109
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v0, 0x0

    .line 2111
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

    .line 2112
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 2114
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v5, :cond_1

    .line 2115
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2117
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 2119
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "onRawPictureReceived() - parameters type is incorrect"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :goto_0
    return-void

    .line 2124
    :cond_3
    new-instance v2, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 2125
    .local v2, "dngCreator":Landroid/hardware/camera2/DngCreator;
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2126
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 2127
    :cond_4
    const/4 v3, 0x1

    .line 2128
    .local v3, "orientation":I
    sget-object v6, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$base$Rotation:[I

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

    .line 2143
    :goto_1
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 2146
    new-instance v4, Lcom/oneplus/camera/io/RawPhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/oneplus/camera/io/RawPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V

    .line 2149
    .local v4, "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2131
    .end local v4    # "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    :pswitch_0
    const/4 v3, 0x1

    .line 2132
    goto :goto_1

    .line 2134
    :pswitch_1
    const/4 v3, 0x6

    .line 2135
    goto :goto_1

    .line 2137
    :pswitch_2
    const/4 v3, 0x3

    .line 2138
    goto :goto_1

    .line 2140
    :pswitch_3
    const/16 v3, 0x8

    goto :goto_1

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 3
    .param p1, "frameIndex"    # I

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Index : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2157
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2159
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    if-nez p1, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 2168
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2172
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 2177
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->playDefaultShutterSound()V

    .line 2181
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v2, p1}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 2189
    if-nez p1, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - No event data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    :goto_0
    return-void

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2196
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2201
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private openCameraInternal(Lcom/oneplus/camera/Camera;I)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2364
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2366
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraInternal() - Camera "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not contained in available camera list"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :goto_0
    return v3

    .line 2371
    :cond_0
    sget-object v4, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 2381
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "openCameraInternal() - Open "

    invoke-static {v1, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2384
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->open(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2386
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraInternal() - Fail to open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2390
    :catch_0
    move-exception v0

    .line 2392
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_0
    move v3, v2

    .line 2375
    goto :goto_0

    .line 2396
    :cond_1
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2399
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2400
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2402
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    if-nez v1, :cond_2

    .line 2404
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    .line 2405
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    :cond_2
    move v3, v2

    .line 2409
    goto :goto_0

    :cond_3
    move v1, v3

    .line 2396
    goto :goto_1

    .line 2371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z
    .locals 12
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p3, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    .line 2486
    const/4 v3, 0x0

    .line 2487
    .local v3, "isProfilePrepared":Z
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2489
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2491
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v0, v7, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 2494
    .local v0, "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/camera/VideoCaptureHandler;->prepareCamcorderProfile(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2496
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Profile is prepared by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2497
    const/4 v3, 0x1

    .line 2515
    .end local v0    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v2    # "i":I
    :cond_0
    if-nez v3, :cond_5

    .line 2518
    :try_start_1
    iget-object v6, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 2519
    .local v6, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v6}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 2520
    .local v5, "profile":Landroid/media/CamcorderProfile;
    if-nez v5, :cond_2

    .line 2522
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Unknown resolution : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2524
    const/4 v7, 0x0

    .line 2619
    .end local v5    # "profile":Landroid/media/CamcorderProfile;
    .end local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :goto_1
    return v7

    .line 2501
    .restart local v0    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 2503
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Fail to prepare media recorder by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2504
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2505
    const/4 v7, 0x0

    goto :goto_1

    .line 2489
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2528
    .end local v0    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v2    # "i":I
    .restart local v5    # "profile":Landroid/media/CamcorderProfile;
    .restart local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    const/4 v7, 0x5

    :try_start_2
    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2531
    invoke-virtual {p2, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2543
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Rotation;

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    sget-object v8, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int v4, v7, v8

    .line 2544
    .local v4, "orientation":I
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v7, v8, :cond_3

    .line 2545
    neg-int v4, v4

    .line 2546
    :cond_3
    if-gez v4, :cond_4

    .line 2547
    add-int/lit16 v4, v4, 0x168

    .line 2548
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - Orientation : "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2549
    invoke-virtual {p2, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2553
    .end local v4    # "orientation":I
    .end local v5    # "profile":Landroid/media/CamcorderProfile;
    .end local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_5
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v7, :cond_6

    .line 2554
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v8, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    .line 2556
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    if-eqz v7, :cond_7

    .line 2557
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v7, v8

    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2561
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_c

    .line 2562
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2567
    :goto_2
    iget-wide v8, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    iget-wide v8, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    sget-object v7, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_d

    .line 2569
    :cond_8
    sget-object v7, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2570
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    .line 2577
    :goto_3
    iget-wide v8, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 2578
    iget-wide v8, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    long-to-int v7, v8

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2581
    :cond_9
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-nez v7, :cond_a

    .line 2583
    new-instance v7, Lcom/oneplus/camera/CameraThread$27;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/CameraThread$27;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 2592
    :cond_a
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-nez v7, :cond_b

    .line 2594
    new-instance v7, Lcom/oneplus/camera/CameraThread$28;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/CameraThread$28;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 2603
    :cond_b
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2604
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2607
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - MediaRecorder.prepare [start]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 2609
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - MediaRecorder.prepare [end]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2564
    :cond_c
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2614
    :catch_1
    move-exception v1

    .line 2616
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - Fail to prepare media recorder "

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2617
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2618
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2619
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2574
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_d
    :try_start_3
    iget-wide v8, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    invoke-virtual {p2, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2575
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private prepareVideoFilePath()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2437
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2440
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    instance-of v6, v6, Lcom/oneplus/camera/CameraActivity;

    if-eqz v6, :cond_0

    .line 2443
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    check-cast v6, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/oneplus/camera/CameraActivity;->isVideoServiceMode()Z

    move-result v5

    .line 2444
    .local v5, "videoService":Z
    if-eqz v5, :cond_0

    .line 2446
    sget-object v6, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/MediaResultInfo;

    .line 2447
    .local v4, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 2451
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    const-string v10, "rw"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2452
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "prepareVideoFilePath() - Video file path : "

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 2478
    .end local v4    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .end local v5    # "videoService":Z
    :goto_0
    return v6

    .line 2454
    .restart local v4    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v5    # "videoService":Z
    :catch_0
    move-exception v2

    .line 2456
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v7, "prepareVideoFilePath() - Error when open extra output"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v8

    .line 2457
    goto :goto_0

    .line 2466
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v4    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .end local v5    # "videoService":Z
    :cond_0
    invoke-static {}, Lcom/oneplus/io/Path;->getDefaultCameraFolder()Ljava/io/File;

    move-result-object v1

    .line 2467
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2469
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareVideoFilePath() - Fail to create "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 2470
    goto :goto_0

    .line 2474
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VID_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".mp4"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2476
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    .line 2477
    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareVideoFilePath() - Video file path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2478
    goto/16 :goto_0
.end method

.method private removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2638
    sget-object v1, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2645
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove capture handler when photo capture state is "

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

    .line 2649
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2652
    :goto_0
    return-void

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePhotoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeVideoCaptureHandler(Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    .line 2659
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2660
    sget-object v1, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2667
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove capture handler when video capture state is "

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

    .line 2671
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2674
    :goto_0
    return-void

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVideoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resetCapturingRawPhotoProperty(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 2679
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2680
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 2682
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2684
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2686
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2687
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2689
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2698
    :cond_0
    :goto_0
    return-void

    .line 2696
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "resetCapturingRawPhotoProperty() - camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 7
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2757
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v4, v3

    .line 2834
    :goto_0
    return v4

    .line 2759
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "setMediaTypeInternal() - Media type : "

    invoke-static {v2, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2760
    sget-object v2, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 2794
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Unknown media type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2764
    :pswitch_0
    sget-object v5, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    .line 2770
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Current video capture state is "

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

    goto :goto_0

    .line 2773
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2799
    :cond_1
    :goto_1
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2801
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v5, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_2

    .line 2814
    const/4 v1, 0x0

    .line 2819
    .local v1, "needRestartPreview":Z
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2822
    if-eqz v0, :cond_3

    .line 2823
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2826
    :cond_3
    if-eqz v1, :cond_4

    .line 2828
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "setMediaTypeInternal() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0, v0, v6, v6}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2830
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "setMediaTypeInternal() - Fail to restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v4, v3

    .line 2834
    goto/16 :goto_0

    .line 2779
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "needRestartPreview":Z
    :pswitch_3
    sget-object v5, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_3

    .line 2785
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Current photo capture state is "

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

    goto/16 :goto_0

    .line 2788
    :pswitch_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2789
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2805
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "setMediaTypeInternal() - Stop preview to change media type"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    const/4 v1, 0x1

    .line 2807
    .restart local v1    # "needRestartPreview":Z
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2809
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "setMediaTypeInternal() - Fail to stop preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 2823
    goto :goto_2

    .line 2760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2764
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2801
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 2779
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3004
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3006
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 3007
    .local v2, "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v3, v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v3, p1, :cond_1

    .line 3009
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Cancel pending preview stop rquest"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3016
    .end local v2    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3018
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "startCameraPreviewInternal() - Fail to open camera"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3091
    :goto_1
    return v3

    .line 3004
    .restart local v2    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3023
    .end local v2    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_2
    sget-object v6, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 3053
    :cond_3
    :goto_2
    :pswitch_0
    if-eqz p3, :cond_6

    .line 3055
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Change preview receiver to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3, p3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3062
    :goto_3
    if-eqz p2, :cond_7

    .line 3064
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Preview size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3071
    :goto_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Start preview for camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->startPreview(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3074
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCameraPreviewInternal() - Fail to start preview for camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3075
    goto/16 :goto_1

    .line 3029
    :pswitch_1
    if-eqz p3, :cond_3

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p3, :cond_3

    .line 3031
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Preview receiver changed, stop preview first"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    goto/16 :goto_2

    .line 3036
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "startCameraPreviewInternal() - Start while stopping"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5
    if-ltz v0, :cond_5

    .line 3039
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 3040
    .local v1, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v3, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v3, p1, :cond_4

    .line 3042
    iput-object p2, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    .line 3043
    iput-object p3, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    .line 3044
    iput p4, v1, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    move v3, v5

    .line 3045
    goto/16 :goto_1

    .line 3037
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3048
    .end local v1    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    new-instance v4, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;-><init>(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 3049
    goto/16 :goto_1

    .line 3059
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Use current preview receiver"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3068
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Use current preview size"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3079
    :cond_8
    iput p4, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    .line 3082
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    if-nez v3, :cond_9

    .line 3084
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    .line 3085
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToHighComponents()V

    .line 3086
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v6, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-virtual {v3, v6, v7}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3087
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToNormalComponents()V

    :cond_9
    move v3, v5

    .line 3091
    goto/16 :goto_1

    .line 3023
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3172
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3174
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 3175
    .local v2, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v5, v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v5, p1, :cond_2

    .line 3177
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Remove pending start request"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3184
    .end local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_0
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v5, v6, :cond_3

    .line 3186
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Wait for preview start"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    new-instance v6, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    invoke-direct {v6, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;-><init>(Lcom/oneplus/camera/Camera;[ZI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3251
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v3

    .line 3172
    .restart local v1    # "i":I
    .restart local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3192
    .end local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop preview [start]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 3194
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop preview [end]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3199
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop video recording"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v6, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 3204
    :cond_4
    if-eqz p2, :cond_1

    .line 3206
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v5, v6, :cond_6

    .line 3208
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3210
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p2, v5

    .line 3212
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 3213
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3239
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3241
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreviewInternal() - Error stopping camera preview"

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3242
    if-eqz p2, :cond_5

    .line 3244
    monitor-enter p2

    .line 3246
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-boolean v5, p2, v3

    .line 3248
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 3249
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    move v3, v4

    .line 3251
    goto :goto_1

    .line 3217
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Wait for camera preview stop"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/CameraThread$32;

    invoke-direct {v6, p0, p2, p1}, Lcom/oneplus/camera/CameraThread$32;-><init>(Lcom/oneplus/camera/CameraThread;[ZLcom/oneplus/camera/Camera;)V

    invoke-interface {p1, v5, v6}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 3249
    .end local v1    # "i":I
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3260
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    .line 3272
    :cond_0
    :goto_0
    return-void

    .line 3261
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$33;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$33;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3270
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 3279
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq v2, p1, :cond_1

    .line 3281
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3285
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3288
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_2

    .line 3290
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Stop when locking focus"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    goto :goto_0

    .line 3296
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3297
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_3

    .line 3299
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - No camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3306
    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v2, :cond_4

    .line 3308
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Use default photo capture stop process"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 3310
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    .line 3311
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3320
    :catch_0
    move-exception v1

    .line 3322
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3315
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPhotoCaptureInternal() - Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to stop capture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-interface {v2, v0, p1}, Lcom/oneplus/camera/PhotoCaptureHandler;->stopCapture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3317
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3330
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3331
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 3343
    :cond_0
    :goto_0
    return-void

    .line 3332
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$34;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 16
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_0

    if-nez p1, :cond_1

    .line 3352
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    :goto_0
    return-void

    .line 3357
    :cond_1
    sget-object v4, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Video capture state is "

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

    .line 3370
    :pswitch_0
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

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    .line 3373
    .local v15, "isStarting":Z
    :goto_1
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Stop video snapshot and wait"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    goto/16 :goto_0

    .line 3370
    .end local v15    # "isStarting":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 3388
    .restart local v15    # "isStarting":Z
    :cond_3
    const/4 v14, 0x0

    .line 3389
    .local v14, "ignoreVideo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_5

    if-nez v15, :cond_5

    .line 3391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    sub-long v12, v4, v6

    .line 3392
    .local v12, "duration":J
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_4

    .line 3396
    const-wide/16 v4, 0x3e8

    sub-long v10, v4, v12

    .line 3397
    .local v10, "delayMillis":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Duration is too short : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3398
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3403
    .end local v10    # "delayMillis":J
    :cond_4
    :goto_2
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 3404
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->stopVideoRecording(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3406
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_5

    .line 3407
    const/4 v14, 0x1

    .line 3412
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    .end local v12    # "duration":J
    :cond_5
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 3416
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->complete()V

    .line 3419
    if-eqz v15, :cond_7

    .line 3421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3423
    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 3424
    sget-object p2, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3428
    :cond_7
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 3429
    .restart local v8    # "camera":Lcom/oneplus/camera/Camera;
    if-nez v15, :cond_8

    .line 3431
    if-nez v14, :cond_a

    .line 3433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_8

    .line 3434
    new-instance v2, Lcom/oneplus/camera/io/VideoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;Landroid/location/Location;)V

    .line 3435
    .local v2, "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 3456
    .end local v2    # "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_9

    .line 3458
    sget-object v4, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Release media recorder after preview start or stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    :cond_9
    :goto_4
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 3478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v15, :cond_c

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    goto/16 :goto_0

    .line 3440
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_b

    .line 3444
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3448
    :catch_0
    move-exception v9

    .line 3450
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Fail to delete "

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

    .line 3446
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_b
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3462
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Release media recorder"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 3464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_4

    .line 3478
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 3400
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v10    # "delayMillis":J
    .restart local v12    # "duration":J
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 3357
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3458
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 674
    :goto_0
    return-void

    .line 657
    :cond_0
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_1

    .line 661
    new-instance v0, Lcom/oneplus/camera/CameraThread$13;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$13;-><init>(Lcom/oneplus/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 672
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 671
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final capturePhoto()Lcom/oneplus/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 805
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(I)Lcom/oneplus/camera/CaptureHandle;
    .locals 1
    .param p1, "frameCount"    # I

    .prologue
    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;
    .locals 4
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 832
    if-nez p1, :cond_1

    .line 834
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Invalid frame count"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 861
    :cond_0
    :goto_0
    return-object v0

    .line 839
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;-><init>(Lcom/oneplus/camera/CameraThread;II)V

    .line 842
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 844
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 846
    goto :goto_0

    .line 848
    :cond_2
    new-instance v2, Lcom/oneplus/camera/CameraThread$20;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/CameraThread$20;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 857
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "capturePhoto() - Create handle "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 860
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 861
    goto :goto_0
.end method

.method public final captureVideo(Lcom/oneplus/camera/CameraThread$VideoParams;)Lcom/oneplus/camera/CaptureHandle;
    .locals 6
    .param p1, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    const/4 v2, 0x0

    .line 1061
    if-nez p1, :cond_1

    .line 1063
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - No video parameters"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1096
    :cond_0
    :goto_0
    return-object v0

    .line 1066
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 1067
    .local v1, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-nez v1, :cond_2

    .line 1069
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - No video resolution"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1070
    goto :goto_0

    .line 1072
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/camera/media/Resolution;->getTargetType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-eq v3, v4, :cond_3

    .line 1074
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureVideo() - Invalid resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1075
    goto :goto_0

    .line 1077
    :cond_3
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$VideoParams;->clone()Lcom/oneplus/camera/CameraThread$VideoParams;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoParams;)V

    .line 1078
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1080
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1082
    goto :goto_0

    .line 1084
    :cond_4
    new-instance v3, Lcom/oneplus/camera/CameraThread$21;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/camera/CameraThread$21;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;)V

    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1095
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1096
    goto :goto_0
.end method

.method public checkRemainingMediaCount()V
    .locals 2

    .prologue
    const/16 v1, 0x2724

    .line 1238
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "checkRemainingMediaCount() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCamera(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1356
    if-nez p1, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - No camera to close"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    goto :goto_0

    .line 1365
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraThread$22;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$22;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCameras()V
    .locals 2

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameras() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;)Z
    .locals 1
    .param p1, "captureHandler"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 1433
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    move-result v0

    return v0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z
    .locals 3
    .param p1, "captureHandler"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    const/4 v0, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1448
    if-nez p1, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_0
    return v0

    .line 1453
    :cond_0
    if-nez p2, :cond_1

    .line 1455
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    :cond_1
    if-nez p3, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No complete reason"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1465
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public disableVideoSnapshot()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1641
    new-instance v0, Lcom/oneplus/camera/CameraThread$23;

    const-string v1, "DisableVideoSnapshot"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$23;-><init>(Lcom/oneplus/camera/CameraThread;Ljava/lang/String;)V

    .line 1649
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1653
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1656
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
    .line 1677
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 1688
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1690
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    check-cast v0, [Lcom/oneplus/base/component/Component;

    goto :goto_0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getLastCapturedJpeg()[B
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1765
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1791
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    .line 1794
    :goto_0
    return-void

    .line 1768
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    goto :goto_0

    .line 1772
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    goto :goto_0

    .line 1776
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    goto :goto_0

    .line 1781
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    .line 1782
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iput-boolean v1, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    goto :goto_0

    .line 1787
    :sswitch_4
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1765
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_4
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_1
        0x272e -> :sswitch_2
        0x2738 -> :sswitch_3
    .end sparse-switch
.end method

.method public isShutterSoundNeeded()Z
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v1, "ShutterSound"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 2210
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 2213
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToInitialComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to bind components."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2215
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2223
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 2226
    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 2227
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2228
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2229
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2230
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2231
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2232
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    .line 2236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    .line 2237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    .line 2240
    new-instance v1, Lcom/oneplus/camera/Settings;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v5}, Lcom/oneplus/camera/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 2243
    monitor-enter p0

    .line 2246
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    if-eqz v1, :cond_0

    .line 2248
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "onStarting() - Initial screen size : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2249
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2254
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    if-eqz v1, :cond_1

    .line 2256
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "onStarting() - Initial media type : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2257
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2258
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 2259
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2263
    :cond_1
    new-instance v1, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v1}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 2264
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2265
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$24;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$24;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2273
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$25;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$25;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2281
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2283
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 2284
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2285
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2286
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2288
    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2292
    return-void

    .line 2288
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onStopping()V
    .locals 1

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 2303
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 2306
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/camera/Settings;

    invoke-virtual {v0}, Lcom/oneplus/camera/Settings;->release()V

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2311
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2314
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 2315
    return-void
.end method

.method public final openCamera(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2325
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
    const/4 v0, 0x0

    .line 2337
    if-nez p1, :cond_0

    .line 2339
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "openCamera() - No camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    :goto_0
    return v0

    .line 2342
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2343
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    goto :goto_0

    .line 2344
    :cond_1
    new-instance v1, Lcom/oneplus/camera/CameraThread$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/CameraThread$26;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2353
    const/4 v0, 0x1

    goto :goto_0

    .line 2355
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "openCamera() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playDefaultShutterSound()V
    .locals 3

    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2420
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "playDefaultShutterSound() - No shutter sound to play"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    :goto_0
    return-void

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2629
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 2630
    return-void
.end method

.method public saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;

    .prologue
    const/4 v0, 0x0

    .line 2709
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2710
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-nez v1, :cond_0

    .line 2712
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - No FileManager interface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    :goto_0
    return-object v0

    .line 2717
    :cond_0
    if-nez p1, :cond_1

    .line 2719
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - No save task"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2724
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/camera/io/FileManager;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method public setMediaType(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 2
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 2735
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    .line 2749
    :goto_0
    return v0

    .line 2737
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$29;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$29;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2746
    const/4 v0, 0x1

    goto :goto_0

    .line 2748
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "setMediaType() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPhotoCaptureHandler(Lcom/oneplus/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/oneplus/camera/PhotoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 2847
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2848
    if-nez p1, :cond_0

    .line 2850
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :goto_0
    return-object v0

    .line 2853
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2860
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoCaptureHandler() - Cannot change capture handler when photo capture state is "

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

    goto :goto_0

    .line 2865
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    .line 2866
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2867
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V
    .locals 2
    .param p1, "table"    # Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    .prologue
    .line 2879
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2880
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change resource ID table after starting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2879
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2883
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->clone()Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2884
    monitor-exit p0

    return-void

    .line 2883
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setScreenSize(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "size"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 2893
    if-nez p1, :cond_0

    .line 2894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No screen size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2895
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2896
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2905
    :goto_0
    return-void

    .line 2899
    :cond_1
    monitor-enter p0

    .line 2901
    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2902
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2903
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setVideoCaptureHandler(Lcom/oneplus/camera/VideoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/oneplus/camera/VideoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 2917
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2918
    if-nez p1, :cond_0

    .line 2920
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "setVideoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :goto_0
    return-object v0

    .line 2923
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraThread$35;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2930
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoCaptureHandler() - Cannot change capture handler when video capture state is "

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

    goto :goto_0

    .line 2935
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    .line 2936
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2937
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized start(Lcom/oneplus/camera/media/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 2945
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->start()V

    .line 2946
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    monitor-exit p0

    return-void

    .line 2945
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 2959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 2977
    if-nez p1, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 2996
    :goto_0
    return v0

    .line 2982
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0

    .line 2984
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$30;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread$30;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2993
    const/4 v0, 0x1

    goto :goto_0

    .line 2995
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 2996
    goto :goto_0
.end method

.method public final stopCameraPreview(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 3102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z
    .locals 9
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3117
    if-nez p1, :cond_0

    .line 3119
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    :goto_0
    return v8

    .line 3122
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    move-result v8

    goto :goto_0

    .line 3126
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    move v3, v7

    .line 3127
    .local v3, "isSync":Z
    :goto_1
    new-array v4, v7, [Z

    aput-boolean v8, v4, v8

    .line 3128
    .local v4, "result":[Z
    monitor-enter v4

    .line 3130
    :try_start_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$31;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread$31;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Z[ZI)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3139
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    monitor-exit v4

    goto :goto_0

    .line 3161
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .end local v3    # "isSync":Z
    .end local v4    # "result":[Z
    :cond_2
    move v3, v8

    .line 3126
    goto :goto_1

    .line 3142
    .restart local v3    # "isSync":Z
    .restart local v4    # "result":[Z
    :cond_3
    if-eqz v3, :cond_5

    .line 3146
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Wait for camera thread [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    const-wide/16 v0, 0x1388

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 3148
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Wait for camera thread [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    const/4 v0, 0x0

    aget-boolean v0, v4, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 3150
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    goto :goto_0

    .line 3151
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3152
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 3154
    :catch_0
    move-exception v6

    .line 3156
    .local v6, "ex":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Interrupted"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3157
    monitor-exit v4

    goto :goto_0

    .line 3160
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v8, v7

    goto :goto_0
.end method
