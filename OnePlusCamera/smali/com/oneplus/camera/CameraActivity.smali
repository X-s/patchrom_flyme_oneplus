.class public abstract Lcom/oneplus/camera/CameraActivity;
.super Lcom/oneplus/camera/BaseCameraActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraActivity$1;,
        Lcom/oneplus/camera/CameraActivity$2;,
        Lcom/oneplus/camera/CameraActivity$3;,
        Lcom/oneplus/camera/CameraActivity$4;,
        Lcom/oneplus/camera/CameraActivity$5;,
        Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;,
        Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;,
        Lcom/oneplus/camera/CameraActivity$CameraContext;,
        Lcom/oneplus/camera/CameraActivity$CameraLockHandle;,
        Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;,
        Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;,
        Lcom/oneplus/camera/CameraActivity$KeyEventHandle;,
        Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;,
        Lcom/oneplus/camera/CameraActivity$RotationLockHandle;,
        Lcom/oneplus/camera/CameraActivity$SettingsHandle;,
        Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-StartModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I = null

.field private static final CUD_USAGE_CAMERA_PREVIEW:Ljava/lang/String; = "CameraPreviewStartStop"

.field private static final CUD_USAGE_CAMERA_PREVIEW_FRAME:Ljava/lang/String; = "CameraPreviewFrameWaiting"

.field private static final CUD_USAGE_CAMERA_SWITCH:Ljava/lang/String; = "CameraSwitchStartStop"

.field private static final CUD_USAGE_VIDEO_CAPTURE:Ljava/lang/String; = "VideoCaptureStartStop"

.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final DEVICE_STABILITY_RANGE_ACCELE_MAX:F = 0.43f

.field private static final DEVICE_STABILITY_RANGE_ACCELE_MIN:F = 0.27f

.field private static final DEVICE_STABILITY_RANGE_GYRO_MAX:F = 0.5f

.field private static final DEVICE_STABILITY_RANGE_GYRO_MIN:F = 0.02f

.field private static final DEVICE_STABILITY_SAMPLE_COUNT:I = 0x2

.field private static final DEVICE_STABILITY_TO_CAPTURE:I = 0x64

.field private static final DURATION_CHECK_WINDOW_ROTATION:J = 0x64L

.field private static final DURATION_CLOSE_ALL_CAMERAS_DELAY:J = 0x0L

.field private static final DURATION_DISABLE_TOUCH_FOR_NAV_BAR:J = 0x12cL

.field private static final DURATION_ENABLE_UI_FOR_PREVIEW_FRAME:J = 0x64L

.field public static final DURATION_IDLE:J = 0x1d4c0L

.field private static final DURATION_MAX_PENDING_CAPTURE:J = 0x320L

.field private static final DURATION_NAV_BAR_VISIBLE:J = 0x7d0L

.field private static final DURATION_QUICK_CAPTURE_DELAY:J = 0x12cL

.field private static final DURATION_STABLE_CAPTURE_TIMEOUT:J = 0x12cL

.field private static final DURATION_UPDATE_SCREENSHOT_ROTATION:J = 0x12cL

.field private static final ENABLE_STABLE_FRONT_CAM_CAPTURE:Z = true

.field private static final ENABLE_SWITCH_ANIMATION:Z = true

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

.field public static final EVENT_CAPTURE_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
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

.field public static final EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;
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

.field public static final EVENT_TOUCH:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
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

.field public static final EXTRA_KEY_CAMERA_ACTIVITY_ID:Ljava/lang/String; = "CameraActivity.InstanceId"

.field public static final EXTRA_KEY_IS_DEBUG_MODE:Ljava/lang/String; = "CameraActivity.IsDebugMode"

.field public static final FLAG_ENABLE_WHEN_PAUSING:I = 0x1

.field private static final FLAG_IGNORE_CAMERA_SWITCHING_CHECK:I = 0x8

.field public static final FLAG_IGNORE_SWITCH_ANIMATION:I = 0x4

.field public static final FLAG_NOT_TO_START_CAMERA_PREVIEW:I = 0x20

.field public static final FLAG_NO_SHUTTER_SOUND:I = 0x2

.field public static final FLAG_TRIGGERED_BY_HW_BUTTON:I = 0x10

.field private static final INTENT_FILTER_PRIORITY_MAX:I = 0x7fffffff

.field private static final LOG_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final MSG_CAMERA_PREVIEW_STARTED:I = -0xb

.field private static final MSG_CAMERA_PREVIEW_START_FAILED:I = -0xa

.field private static final MSG_CAMERA_THREAD_EVENT_RAISED:I = -0x1

.field private static final MSG_CAMERA_THREAD_PROP_CHANGED:I = -0x2

.field private static final MSG_CAPTURE_PHOTO_DELAYED:I = -0x96

.field private static final MSG_CEHCK_WINDOW_ROTATION:I = -0x64

.field private static final MSG_CLOSE_ALL_CAMERAS:I = -0x6e

.field private static final MSG_ENABLE_UI_FOR_PREVIEW_FRAME:I = -0x46

.field private static final MSG_FINISH_BY_SELF:I = -0x33

.field private static final MSG_IDLE:I = -0x32

.field private static final MSG_PHOTO_CAPTURE_FAILED:I = -0x14

.field private static final MSG_PHOTO_CAPTURE_STARTED:I = -0x15

.field private static final MSG_QUICK_CAPTURE_PHOTO:I = -0x8c

.field private static final MSG_ROTATION_READY:I = -0x3c

.field private static final MSG_STABLE_CAPTURE_TIMEOUT:I = -0x82

.field private static final MSG_UPDATE_DELAYED_ROTATION:I = -0x5f

.field private static final MSG_UPDATE_ELAPSED_RECORDING_TIME:I = -0x28

.field private static final MSG_UPDATE_SCREENSHOT_ROTATION:I = -0x5a

.field private static final MSG_UPDATE_SYS_UI_VISIBILITY:I = -0x50

.field private static final MSG_VIDEO_CAPTURE_FAILED:I = -0x1e

.field private static final MSG_VIDEO_CAPTURE_PAUSED:I = -0x20

.field private static final MSG_VIDEO_CAPTURE_RESUMED:I = -0x21

.field private static final MSG_VIDEO_CAPTURE_STARTED:I = -0x1f

.field private static final PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field private static final PRINT_DEVICE_STABILITY_LOGS:Z = false

.field public static final PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
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

.field public static final PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
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

.field public static final PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
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

.field public static final PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_QUICK_CAPTURE_SCHEDULED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_WAITING_FOR_DEVICE_STABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
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

.field public static final PROP_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
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

.field public static final PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Settings;",
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

.field protected static final REQUIRED_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_CAMERA_LENS_FACING:Ljava/lang/String; = "CameraLensFacing"

.field private static final SETTINGS_KEY_IS_DEBUG_MODE:Ljava/lang/String; = "IsDebugMode"

.field public static final SETTINGS_KEY_IS_QUICK_CAPTURE_ENABLED:Ljava/lang/String; = "IsQuickCaptureEnabled"

.field public static final SETTINGS_KEY_SELF_TIMER_INTERVAL_BACK:Ljava/lang/String; = "SelfTimer.Back"

.field private static final SETTINGS_KEY_SELF_TIMER_INTERVAL_FRONT:Ljava/lang/String; = "SelfTimer.Front"

.field private static final STATE_KEY_IS_QUICK_CAPTURE_TRIGGERED:Ljava/lang/String; = "CameraActivity.IsQuickCaptureTriggered"

.field private static final TIMEOUT_CHECK_ROTATION:J = 0xbb8L

.field private static final TIMEOUT_KEEP_CAPTURE_SETTINGS:J = 0x493e0L

.field private static final TIMEOUT_ROTATION_READY:J = 0xc8L

.field private static final USE_GYROSCOPE_FOR_DEVICE_STABILITY_CHECK:Z

.field private static m_LatestLeaveTimeMillis:J


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private m_AccelValueSampleIndex:I

.field private m_AccelValueSamples:[[F

.field private final m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

.field private m_AccelerometerValuesIndex:I

.field private final m_AccelerometerValuesTable:[[F

.field private final m_ActivityResultHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActivityRotation:Lcom/oneplus/base/Rotation;

.field private m_BatteryReceiver:Landroid/content/BroadcastReceiver;

.field private m_BurstDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraContextStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$CameraContext;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$CameraLockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraPreviewSessionID:I

.field private m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

.field private m_CameraSoundHandle:Lcom/oneplus/base/Handle;

.field private m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraThread:Lcom/oneplus/camera/CameraThread;

.field private m_CancelTouchEvents:Z

.field private final m_CaptureDelayTimeHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private final m_CaptureUIDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$UIDisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CheckRotationStartTime:J

.field private m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

.field private m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

.field private m_DisableDebugModeWhenExiting:Z

.field private m_ElapsedPartialRecordingTimeMillis:J

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private final m_FastShotToShotDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GyroscopeListener:Landroid/hardware/SensorEventListener;

.field private m_IgnoreNavigationBar:Z

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

.field private m_InstanceId:Ljava/lang/String;

.field private m_IsAccelerometerStarted:Z

.field private m_IsCameraPreviewReceiverReady:Z

.field private m_IsGyroscopeStarted:Z

.field private m_IsHighComponentsCreated:Z

.field private m_IsIdle:Z

.field private m_IsQuickCaptureScheduled:Z

.field private m_IsQuickCaptureTriggered:Z

.field private m_IsRotationReady:Z

.field private m_IsSelfTimerResetNeeded:Z

.field private m_KeyDownEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_KeyEventHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraActivity$KeyEventHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastElapsedRecordingTimeCheckTime:J

.field private m_LastNavBarVisibleTime:J

.field private m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

.field private volatile m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

.field private m_OptionalPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

.field private m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field private m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

.field private final m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_PermissionManager:Lcom/oneplus/base/PermissionManager;

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field private m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

.field private final m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private final m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

.field private m_PreviousRotation:Lcom/oneplus/base/Rotation;

.field private final m_RecordingTimeRatioHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

.field private m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

.field private m_Rotation:Lcom/oneplus/base/Rotation;

.field private m_RotationDelay:J

.field private final m_RotationLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/CameraActivity$RotationLockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenShotBitmap:Landroid/graphics/Bitmap;

.field private m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

.field private m_ScreenShotImageView:Landroid/widget/ImageView;

.field private m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_SelfTimerDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SelfTimerHandle:Lcom/oneplus/base/Handle;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private final m_SettingsHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraActivity$SettingsHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SimpleUIModeHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartMode:Lcom/oneplus/camera/StartMode;

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;"
        }
    .end annotation
.end field

.field protected m_StorageStopRecordToast:I

.field protected m_StorageToast:I

.field private m_TakeScreenShotHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

.field private m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

.field private m_TotalPausedVideoRecordingTime:J

.field private m_TouchDigits:I

.field private m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field private m_VideoRecordStartTime:J

.field private m_VideoRecordingPausedTime:J

.field private m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -get0()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSoundHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/CameraActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/CameraActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/io/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$LensFacing;->values()[Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CaptureCompleteReason;->values()[Lcom/oneplus/camera/CaptureCompleteReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_CALL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_COMMUNICATION:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->values()[Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x34

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-StartModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/StartMode;->values()[Lcom/oneplus/camera/StartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/StartMode;->BUSINESS_CARD:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_BOKEH:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_MANUAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->values()[Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSoundHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/CameraActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/CameraActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/camera/CameraActivity;->m_LastNavBarVisibleTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/CameraActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->isInteractive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "initialMediaType"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "eventKeys"    # Ljava/util/List;
    .param p3, "propKeys"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->bindToCameraThread(Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->onCountDownTimerCancelled()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/CameraActivity;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCountDownTimerChanged(J)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/CameraActivity;[F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onGyroscopeValuesChanged([F)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onPermissionResult(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 0
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onSystemOrientationSettingsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->cancelCaptureDelayTime(Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->restoreSettings(Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startAccelerometer()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->unlockCamera(Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$RotationLockHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$RotationLockHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->unlockRotation(Lcom/oneplus/camera/CameraActivity$RotationLockHandle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkReadyToCapture()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->enableBurstPhotoCapture(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->enableCaptureUI(Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->enableFastShotToShot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->enableSelfTimer(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->exitSimpleUIMode(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/CameraActivity;[F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 115
    new-instance v1, Lcom/oneplus/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v6

    .line 116
    new-instance v1, Lcom/oneplus/camera/FocusControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/FocusControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    .line 117
    new-instance v1, Lcom/oneplus/camera/media/ResolutionManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/media/ResolutionManagerBuilder;-><init>()V

    aput-object v1, v0, v9

    .line 118
    new-instance v1, Lcom/oneplus/camera/ui/ViewfinderBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ViewfinderBuilder;-><init>()V

    aput-object v1, v0, v5

    .line 114
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AccelerometerValues"

    const-class v2, [F

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    new-array v5, v5, [F

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    .line 172
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActivityRotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 176
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AllRequiredPermissionsGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "BatteryLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Camera"

    const-class v2, Lcom/oneplus/camera/Camera;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 193
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 197
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DeviceOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 205
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DeviceStabilityLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 209
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ElapsedRecordingSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 213
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstPhotoCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 217
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstPhotoOnCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 221
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraLocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 225
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 229
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraSwitching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    .line 233
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraThreadStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 237
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureUIEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 241
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 245
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDebugMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    .line 249
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsFastShotToShotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 253
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsIdle"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    .line 257
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 261
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsQuickCaptureScheduled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_QUICK_CAPTURE_SCHEDULED:Lcom/oneplus/base/PropertyKey;

    .line 265
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsReadyToCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 269
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsRotationReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    .line 273
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsScreenOn"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    .line 277
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSecureMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 281
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSelfTimerStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 285
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSelfTimerUsable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    .line 289
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSimpleUIModeEntered"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    .line 293
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsTouchingOnScreen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    .line 297
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 301
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWaitingForDeviceStable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_DEVICE_STABLE:Lcom/oneplus/base/PropertyKey;

    .line 305
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWaitingForStableToCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 309
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsLaunching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    .line 313
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "KeepLastCaptureSettings"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    .line 317
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 321
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MediaType"

    const-class v2, Lcom/oneplus/camera/media/MediaType;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 325
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureState"

    const-class v2, Lcom/oneplus/camera/PhotoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 329
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 333
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 337
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Rotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 341
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 345
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v6, "SelfTimerInterval"

    const-class v7, Ljava/lang/Long;

    const-class v8, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    .line 349
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Settings"

    const-class v2, Lcom/oneplus/base/Settings;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    .line 353
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 357
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureState"

    const-class v2, Lcom/oneplus/camera/VideoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 363
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "BurstPhotoReceived"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 367
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureCancelled"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 371
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 375
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureFailed"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    .line 379
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 383
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarting"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    .line 387
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 391
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 395
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 399
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 403
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PostviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 407
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 411
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Touch"

    const-class v2, Lcom/oneplus/camera/ui/MotionEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    .line 415
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "UnprocessedPhotoReceived"

    const-class v2, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    .line 462
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;

    .line 487
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 491
    const-wide/32 v0, -0x493e0

    sput-wide v0, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    .line 944
    const-string/jumbo v0, "CameraLensFacing"

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 945
    const-string/jumbo v0, "SelfTimer.Back"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    const-string/jumbo v0, "SelfTimer.Front"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 947
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 957
    invoke-direct {p0}, Lcom/oneplus/camera/BaseCameraActivity;-><init>()V

    .line 496
    new-array v0, v4, [[F

    new-array v1, v2, [F

    aput-object v1, v0, v3

    new-array v1, v2, [F

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    .line 498
    new-array v0, v4, [[F

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 500
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 502
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    .line 503
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    .line 504
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    .line 509
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 513
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureDelayTimeHandles:Ljava/util/LinkedList;

    .line 515
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    .line 521
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    .line 534
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OptionalPermissions:Ljava/util/List;

    .line 547
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    .line 551
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    .line 555
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    .line 557
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    .line 562
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    .line 568
    sget-object v0, Lcom/oneplus/camera/LaunchSource;->NORMAL:Lcom/oneplus/camera/LaunchSource;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 589
    new-instance v0, Lcom/oneplus/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$1;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    .line 601
    new-instance v0, Lcom/oneplus/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$2;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 617
    new-instance v0, Lcom/oneplus/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$3;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 628
    new-instance v0, Lcom/oneplus/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$4;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 636
    new-instance v0, Lcom/oneplus/camera/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$5;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 960
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$CameraContext;

    invoke-direct {v1, v3}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 957
    return-void
.end method

.method private bindToCameraThread(Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "initialMediaType"    # Lcom/oneplus/camera/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventKey",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    .local p3, "propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 982
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindToCameraThread()"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 985
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraThread;->disableVideoSnapshot()Lcom/oneplus/base/Handle;

    .line 988
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 990
    new-instance v3, Lcom/oneplus/camera/CameraActivity$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$6;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 998
    .local v3, "handler":Lcom/oneplus/base/EventHandler;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 999
    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventKey;

    invoke-virtual {v8, v7, v3}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 998
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1003
    .end local v3    # "handler":Lcom/oneplus/base/EventHandler;
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1005
    new-instance v0, Lcom/oneplus/camera/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$7;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 1021
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_6

    .line 1023
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/PropertyKey;

    .line 1024
    .local v6, "propKey":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v9

    iget-object v7, v6, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v8, v6}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/PropertyChangeEventArgs;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/base/PropertyChangeEventArgs;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 1025
    .local v5, "params":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v7, v6, v0}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1026
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-eq v6, v7, :cond_3

    .line 1027
    invoke-static {p0, v10, v9, v9, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1021
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1031
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1032
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1033
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindToCameraThread() - Empty camera list"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1036
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1037
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 1038
    invoke-static {v2, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    .line 1045
    .end local v0    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    .end local v1    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "i":I
    .end local v5    # "params":[Ljava/lang/Object;
    .end local v6    # "propKey":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v7, p1}, Lcom/oneplus/camera/CameraThread;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1046
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindToCameraThread() - Fail to set initial media type to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1052
    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v9, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Rotation;

    invoke-virtual {v8, v9, v7}, Lcom/oneplus/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onBindToCameraThread()V

    .line 980
    return-void
.end method

.method private bindToInitialComponents()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No ResolutionManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return v2

    .line 1069
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No Viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return v2

    .line 1082
    :cond_2
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 1083
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No CaptureModeManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return v2

    .line 1090
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private bindToNormalComponents()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1098
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/StorageManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 1099
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Lcom/oneplus/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$8;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 1132
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-nez v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/CountDownTimer;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CountDownTimer;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    .line 1138
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->PROP_REMAINING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$9;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1148
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->EVENT_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$10;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1156
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 1161
    :cond_1
    const-class v0, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 1162
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 1166
    :cond_2
    const-class v0, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 1167
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$11;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1181
    :cond_3
    return v4
.end method

.method private cancelCaptureDelayTime(Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureDelayTimeHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1186
    return-void
.end method

.method private cancelQuickCaptures()V
    .locals 2

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    if-eqz v0, :cond_0

    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    .line 1198
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cancelQuickCaptures()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_0
    return-void
.end method

.method private capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromSelfTimer"    # Z
    .param p3, "fromStableWaiting"    # Z

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Handle : "

    const-string/jumbo v3, ", from self timer : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, ", from stable waiting : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1406
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Cannot take snapshot on camera switching state."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const/4 v0, 0x0

    return v0

    .line 1412
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1421
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_7

    .line 1425
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1427
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1466
    :cond_3
    :goto_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 1467
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v8, :cond_a

    .line 1469
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v0, 0x0

    return v0

    .line 1414
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Cannot take video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    .line 1416
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 1417
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 1422
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1431
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1432
    .local v12, "seconds":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-lez v0, :cond_3

    .line 1434
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_9

    .line 1436
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Start self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    const/4 v1, 0x1

    invoke-interface {v0, v12, v13, v1}, Lcom/oneplus/camera/CountDownTimer;->start(JI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 1438
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1440
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1441
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1442
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$12;

    invoke-direct {v1, p0, v12, v13}, Lcom/oneplus/camera/CameraActivity$12;-><init>(Lcom/oneplus/camera/CameraActivity;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1450
    const/4 v0, 0x1

    return v0

    .line 1452
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Fail to start self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1455
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - No CountDownTimer interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1460
    .end local v12    # "seconds":J
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1472
    .restart local v8    # "camera":Lcom/oneplus/camera/Camera;
    :cond_a
    if-nez p3, :cond_b

    .line 1473
    if-eqz p2, :cond_c

    .line 1489
    :cond_b
    const/16 v0, -0x82

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1492
    iget-wide v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->delayTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 1494
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capturePhoto() - Delayed capture after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->delayTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1496
    if-eqz p2, :cond_d

    const/4 v2, 0x1

    :goto_2
    if-eqz p3, :cond_e

    const/4 v3, 0x1

    :goto_3
    iget-wide v6, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->delayTimeMillis:J

    const/16 v1, -0x96

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 1497
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->delayTimeMillis:J

    .line 1498
    const/4 v0, 0x1

    return v0

    .line 1474
    :cond_c
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_b

    .line 1475
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 1476
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1479
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1480
    .local v11, "stabilityLevel":I
    const/16 v0, 0x64

    if-ge v11, v0, :cond_b

    .line 1482
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1483
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1484
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capturePhoto() - Waiting for device stable to capture, stability level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/16 v0, -0x82

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 1486
    const/4 v0, 0x1

    return v0

    .line 1496
    .end local v11    # "stabilityLevel":I
    :cond_d
    const/4 v2, 0x0

    goto :goto_2

    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    .line 1500
    :cond_f
    const/16 v0, -0x96

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1506
    new-instance v9, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v0

    invoke-direct {v9, p1, v0}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    .line 1507
    .local v9, "e":Lcom/oneplus/camera/CaptureEventArgs;
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v9}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1510
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v10, 0x0

    .line 1512
    .local v10, "lockFocus":Z
    :goto_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$13;

    invoke-direct {v1, p0, v10, p1}, Lcom/oneplus/camera/CameraActivity$13;-><init>(Lcom/oneplus/camera/CameraActivity;ZLcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1531
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 1533
    const/4 v0, 0x0

    return v0

    .line 1511
    .end local v10    # "lockFocus":Z
    :cond_10
    const/4 v10, 0x1

    .restart local v10    # "lockFocus":Z
    goto :goto_4

    .line 1537
    :cond_11
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1540
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1543
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 1546
    const/4 v0, 0x1

    return v0

    .line 1427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private captureVideo(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)Z
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1597
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1600
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Cannot take video on camera switching state."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    return v4

    .line 1606
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_1

    .line 1608
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    return v4

    .line 1611
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoParams;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraThread$VideoParams;-><init>(Lcom/oneplus/camera/media/Resolution;)V

    .line 1613
    .local v0, "params":Lcom/oneplus/camera/CameraThread$VideoParams;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    .line 1614
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    .line 1618
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1621
    const-string/jumbo v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1624
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1626
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->pauseAudioPlaybackForVideoRecording()V

    .line 1629
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/camera/CameraActivity$14;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraThread$VideoParams;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1647
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1649
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1650
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 1651
    return v4

    .line 1655
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1658
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 1661
    const/4 v1, 0x1

    return v1
.end method

.method private changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 1669
    .local v0, "oldState":Lcom/oneplus/camera/OperationState;
    if-eq v0, p1, :cond_0

    .line 1671
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 1672
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1673
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    return-object v1

    .line 1675
    :cond_0
    return-object v0
.end method

.method private checkLatestLeavingTime()V
    .locals 8

    .prologue
    .line 1683
    const/4 v2, 0x0

    .line 1684
    .local v2, "isCapturing":Z
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1690
    const/4 v2, 0x1

    .line 1693
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 1699
    const/4 v2, 0x1

    .line 1704
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    sub-long v0, v4, v6

    .line 1705
    .local v0, "diffTime":J
    if-nez v2, :cond_0

    const-wide/32 v4, 0x493e0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1708
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLatestLeavingTime() - Clear last capture settings"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1680
    :goto_0
    return-void

    .line 1714
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLatestLeavingTime() - Keep last capture settings"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1684
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1693
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private checkReadyToCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1724
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1752
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 1754
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1755
    return-void

    .line 1727
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1728
    return-void

    .line 1732
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1740
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1745
    return-void

    .line 1759
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1721
    return-void

    .line 1724
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkRequiredPermissions()V
    .locals 5

    .prologue
    .line 1766
    const/4 v0, 0x1

    .line 1767
    .local v0, "allGranted":Z
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1769
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1771
    const/4 v0, 0x0

    .line 1772
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRequiredPermissions() - Permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is not granted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1775
    :cond_1
    if-eqz v0, :cond_2

    .line 1776
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkRequiredPermissions() - All required permissions are granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1778
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_3

    .line 1779
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 1764
    :cond_3
    return-void
.end method

.method private checkScreenShotRotation(Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 1787
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1788
    :cond_0
    return-void

    .line 1790
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->isSameAsWindowManagerRotation(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation()V

    .line 1793
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkScreenShotRotation() - the same with window rotation:"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :goto_0
    return-void

    .line 1797
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CheckRotationStartTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    .line 1799
    const/16 v1, -0x64

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 1800
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkScreenShotRotation() - wait for next check"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkScreenShotRotation() - check rotation timeout."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkStartMode()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1815
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1816
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/oneplus/camera/CameraActivity;->checkStartMode(Landroid/content/Intent;)Lcom/oneplus/camera/StartMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 1819
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1820
    .local v8, "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v10, 0x0

    .line 1821
    .local v10, "launchFlags":I
    if-eqz v8, :cond_1

    const-string/jumbo v0, "com.android.systemui.camera_launch_source_gesture"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    const-string/jumbo v0, "com.android.systemui.camera_launch_source_gesture"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1824
    invoke-virtual {p0, v10}, Lcom/oneplus/camera/CameraActivity;->checkLaunchSource(I)Lcom/oneplus/camera/LaunchSource;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    .line 1828
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1875
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1883
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1885
    :goto_1
    const/16 v0, -0x33

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1888
    if-eqz v8, :cond_3

    const-string/jumbo v0, "CameraActivity.IsDebugMode"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraActivity;->m_DisableDebugModeWhenExiting:Z

    .line 1891
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraActivity.IsDebugMode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1894
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkStartMode() - Start mode: "

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    const-string/jumbo v3, ", Media extras: "

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v5, ", Launch source: "

    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1812
    return-void

    .line 1832
    :sswitch_0
    if-eqz v8, :cond_2

    .line 1834
    new-instance v0, Lcom/oneplus/camera/MediaResultInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/MediaResultInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    .line 1835
    const-string/jumbo v0, "output"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1836
    .local v7, "extraOutput":Ljava/lang/Object;
    instance-of v0, v7, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1837
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    check-cast v7, Landroid/net/Uri;

    .end local v7    # "extraOutput":Ljava/lang/Object;
    iput-object v7, v0, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1838
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    goto :goto_0

    .line 1846
    :sswitch_1
    new-instance v0, Lcom/oneplus/camera/MediaResultInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/MediaResultInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    .line 1847
    if-eqz v8, :cond_2

    .line 1849
    const-string/jumbo v0, "output"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1850
    .restart local v7    # "extraOutput":Ljava/lang/Object;
    instance-of v0, v7, Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 1851
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    check-cast v7, Landroid/net/Uri;

    .end local v7    # "extraOutput":Ljava/lang/Object;
    iput-object v7, v0, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1852
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    goto/16 :goto_0

    .line 1859
    :sswitch_2
    if-eqz v8, :cond_2

    .line 1861
    new-instance v0, Lcom/oneplus/camera/MediaResultInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/MediaResultInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    .line 1862
    const-string/jumbo v0, "output"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1863
    .restart local v7    # "extraOutput":Ljava/lang/Object;
    instance-of v0, v7, Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1864
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    check-cast v7, Landroid/net/Uri;

    .end local v7    # "extraOutput":Ljava/lang/Object;
    iput-object v7, v0, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1866
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    .line 1867
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v1, "android.intent.extra.durationLimit"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraDurationLimit:J

    .line 1868
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/MediaResultInfo;->extraVideoQuality:I

    goto/16 :goto_0

    .line 1880
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1828
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 1875
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkTouchDigits(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1901
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v7, v8, :cond_6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 1903
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v8, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 1904
    .local v4, "previewBounds":Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 1905
    .local v6, "width":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 1906
    .local v1, "height":F
    sub-float v7, v6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 1908
    const/4 v7, 0x0

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    .line 1909
    return-void

    .line 1911
    :cond_0
    const/high16 v7, 0x40400000    # 3.0f

    div-float v0, v6, v7

    .line 1912
    .local v0, "gridSize":F
    iget v7, v4, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    div-float/2addr v7, v0

    float-to-int v2, v7

    .line 1913
    .local v2, "i":I
    iget v7, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    div-float/2addr v7, v0

    float-to-int v3, v7

    .line 1914
    .local v3, "j":I
    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v2

    add-int/lit8 v5, v7, 0x1

    .line 1915
    .local v5, "touchDigit":I
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkTouchDigits() - Touch digit: "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, ", current: "

    iget v11, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1916
    iget v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    if-nez v7, :cond_1

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 1917
    const/4 v7, 0x3

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    .line 1899
    .end local v0    # "gridSize":F
    .end local v1    # "height":F
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "previewBounds":Landroid/graphics/RectF;
    .end local v5    # "touchDigit":I
    .end local v6    # "width":F
    :goto_0
    return-void

    .line 1918
    .restart local v0    # "gridSize":F
    .restart local v1    # "height":F
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "previewBounds":Landroid/graphics/RectF;
    .restart local v5    # "touchDigit":I
    .restart local v6    # "width":F
    :cond_1
    iget v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const/4 v7, 0x7

    if-ne v5, v7, :cond_2

    .line 1919
    const/16 v7, 0x49

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    goto :goto_0

    .line 1920
    :cond_2
    iget v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    const/16 v8, 0x49

    if-ne v7, v8, :cond_3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 1921
    const/16 v7, 0x111

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    goto :goto_0

    .line 1922
    :cond_3
    iget v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    const/16 v8, 0x111

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 1924
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1925
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    .line 1930
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1931
    const/4 v7, 0x0

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    goto :goto_0

    .line 1927
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    goto :goto_1

    .line 1934
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    goto :goto_0

    .line 1937
    .end local v0    # "gridSize":F
    .end local v1    # "height":F
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "previewBounds":Landroid/graphics/RectF;
    .end local v5    # "touchDigit":I
    .end local v6    # "width":F
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    goto :goto_0
.end method

.method private completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 1982
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completePhotoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    return-void

    .line 1987
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_0

    .line 1993
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completePhotoCapture() - Current capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    return-void

    .line 1998
    :sswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1999
    .local v0, "isCapturing":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2002
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2004
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2005
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2006
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1977
    :cond_1
    :goto_1
    return-void

    .line 1998
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isCapturing":Z
    goto :goto_0

    .line 2009
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1

    .line 1987
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private completeVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    return-void

    .line 2024
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2033
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completeVideoCapture() - Current capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    return-void

    .line 2038
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2039
    .local v0, "isCapturing":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2042
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2044
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2045
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2046
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 2014
    :cond_1
    :goto_1
    return-void

    .line 2038
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isCapturing":Z
    goto :goto_0

    .line 2049
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1

    .line 2024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableBurstPhotoCapture(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2267
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 2264
    return-void

    .line 2268
    :cond_0
    return-void
.end method

.method private enableCaptureUI(Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    .prologue
    .line 2276
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2277
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2278
    return-void

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableCaptureUI() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2281
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2274
    :cond_1
    return-void
.end method

.method private enableFastShotToShot(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2289
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 2292
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2286
    :cond_0
    return-void

    .line 2290
    :cond_1
    return-void
.end method

.method private enableSelfTimer(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2300
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerUsability()V

    .line 2297
    return-void

    .line 2301
    :cond_0
    return-void
.end method

.method private exitSimpleUIMode(Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2343
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    return-void

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exitSimpleUIMode() - Handle count : "

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2348
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2337
    :cond_1
    return-void
.end method

.method private idle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2701
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "idle()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    .line 2705
    const/16 v0, -0x32

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2706
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2707
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2699
    :cond_0
    return-void
.end method

.method private isInteractive()Z
    .locals 2

    .prologue
    .line 2776
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2777
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    return v1
.end method

.method private isSameAsWindowManagerRotation(Lcom/oneplus/base/Rotation;)Z
    .locals 7
    .param p1, "comparedRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2736
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 2737
    .local v2, "wm":Landroid/view/WindowManager;
    if-nez v2, :cond_0

    .line 2739
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isSameAsWindowRotation() - WindowManager is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    return v6

    .line 2742
    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2743
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_1

    .line 2745
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isSameAsWindowRotation() - display is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    return v6

    .line 2748
    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 2749
    .local v3, "wmRotation":I
    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v0

    .line 2750
    .local v0, "comparedOrientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_2

    .line 2752
    return v5

    .line 2754
    :cond_2
    if-ne v3, v5, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_3

    .line 2756
    return v5

    .line 2758
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/16 v4, 0xb4

    if-ne v0, v4, :cond_4

    .line 2760
    return v5

    .line 2762
    :cond_4
    if-nez v3, :cond_5

    if-nez v0, :cond_5

    .line 2764
    return v5

    .line 2766
    :cond_5
    return v6
.end method

.method private isStartedInSelfieMode()Z
    .locals 2

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_1

    .line 2835
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2837
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$22;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/camera/CameraActivity$22;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2964
    return-void
.end method

.method private notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 2982
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2984
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2985
    :cond_0
    const/16 v1, -0x5a

    const/4 v5, 0x1

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 2986
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    if-eq p2, v0, :cond_2

    .line 2987
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2991
    :cond_2
    iget-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2992
    if-ne p1, p2, :cond_3

    .line 2993
    return-void

    .line 2996
    :cond_3
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2997
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2979
    return-void
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 22
    .param p1, "values"    # [F

    .prologue
    .line 3005
    sget-object v18, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    .line 3006
    return-void

    .line 3009
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v19, v0

    aget-object v15, v18, v19

    .line 3010
    .local v15, "oldValues":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v19, v0

    aget-object v14, v18, v19

    .line 3012
    .local v14, "newValues":[F
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3015
    sget-object v18, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15, v14}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3018
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 3020
    const/16 v18, 0x0

    aget v18, v14, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 3021
    .local v9, "diffX":F
    const/16 v18, 0x1

    aget v18, v14, v18

    const/16 v19, 0x1

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 3022
    .local v10, "diffY":F
    const/16 v18, 0x2

    aget v18, v14, v18

    const/16 v19, 0x2

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 3023
    .local v11, "diffZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    if-nez v18, :cond_1

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 3025
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aput v9, v18, v19

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aput v10, v18, v19

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aput v11, v18, v19

    .line 3028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    rem-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    .line 3029
    const/4 v6, 0x0

    .line 3030
    .local v6, "avgDiffX":F
    const/4 v7, 0x0

    .line 3031
    .local v7, "avgDiffY":F
    const/4 v8, 0x0

    .line 3032
    .local v8, "avgDiffZ":F
    const/16 v16, 0x0

    .line 3033
    .local v16, "sampleCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v13, v18, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_3

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    aget-object v12, v18, v13

    .line 3036
    .local v12, "diffs":[F
    if-eqz v12, :cond_2

    .line 3038
    add-int/lit8 v16, v16, 0x1

    .line 3039
    const/16 v18, 0x0

    aget v18, v12, v18

    add-float v6, v6, v18

    .line 3040
    const/16 v18, 0x1

    aget v18, v12, v18

    add-float v7, v7, v18

    .line 3041
    const/16 v18, 0x2

    aget v18, v12, v18

    add-float v8, v8, v18

    .line 3033
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 3044
    .end local v12    # "diffs":[F
    :cond_3
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v6, v18

    .line 3045
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v7, v18

    .line 3046
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v8, v18

    .line 3047
    mul-float v18, v6, v6

    mul-float v19, v7, v7

    add-float v18, v18, v19

    mul-float v19, v8, v8

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 3062
    .local v4, "avgDiff":D
    const-wide v18, 0x3fd147ae20000000L    # 0.27000001072883606

    cmpg-double v18, v4, v18

    if-gtz v18, :cond_5

    .line 3063
    const/16 v17, 0x64

    .line 3068
    .local v17, "stabilityLevel":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraActivity;->updateStabilityLevel(I)V

    .line 3002
    .end local v4    # "avgDiff":D
    .end local v6    # "avgDiffX":F
    .end local v7    # "avgDiffY":F
    .end local v8    # "avgDiffZ":F
    .end local v9    # "diffX":F
    .end local v10    # "diffY":F
    .end local v11    # "diffZ":F
    .end local v13    # "i":I
    .end local v16    # "sampleCount":I
    .end local v17    # "stabilityLevel":I
    :cond_4
    return-void

    .line 3064
    .restart local v4    # "avgDiff":D
    .restart local v6    # "avgDiffX":F
    .restart local v7    # "avgDiffY":F
    .restart local v8    # "avgDiffZ":F
    .restart local v9    # "diffX":F
    .restart local v10    # "diffY":F
    .restart local v11    # "diffZ":F
    .restart local v13    # "i":I
    .restart local v16    # "sampleCount":I
    :cond_5
    const-wide v18, 0x3fdb851ec0000000L    # 0.4300000071525574

    cmpl-double v18, v4, v18

    if-ltz v18, :cond_6

    .line 3065
    const/16 v17, 0x0

    .restart local v17    # "stabilityLevel":I
    goto :goto_1

    .line 3067
    .end local v17    # "stabilityLevel":I
    :cond_6
    const-wide v18, 0x3fd147ae20000000L    # 0.27000001072883606

    sub-double v18, v4, v18

    const-wide v20, 0x3fc47ae140000000L    # 0.1599999964237213

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    sub-double v18, v20, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "stabilityLevel":I
    goto :goto_1
.end method

.method private onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 5
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 3288
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3290
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBurstPhotoReceived() - Unknown capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBurstPhotoReceived() - Expected capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    return-void

    .line 3296
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3285
    return-void
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "prevCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 3301
    return-void
.end method

.method private onCameraPreviewReceived()V
    .locals 6

    .prologue
    .line 3339
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3340
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3346
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraPreviewReceived() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    return-void

    .line 3351
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3352
    return-void

    .line 3355
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 3358
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x46

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3359
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_1

    .line 3360
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 3361
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    .line 3362
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 3365
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_3

    .line 3366
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 3367
    :cond_3
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_4

    .line 3368
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3336
    :cond_4
    return-void

    .line 3340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraPreviewStartFailed(Lcom/oneplus/camera/Camera;I)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "cameraPreviewSessionID"    # I

    .prologue
    .line 3492
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3493
    return-void

    .line 3495
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 3497
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStartFailed() - Preview session incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current preview session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    return-void

    .line 3502
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 3504
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStartFailed() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    return-void

    .line 3509
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStartFailed()V

    .line 3489
    return-void
.end method

.method private onCameraPreviewStarted(Lcom/oneplus/camera/Camera;I)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "cameraPreviewSessionID"    # I

    .prologue
    .line 3456
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3457
    return-void

    .line 3459
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 3461
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStarted() - Preview session incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current preview session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    return-void

    .line 3466
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 3468
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStarted() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    return-void

    .line 3473
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStarted()V

    .line 3453
    return-void
.end method

.method private onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 4
    .param p1, "oldeState"    # Lcom/oneplus/camera/PhotoCaptureState;
    .param p2, "newState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 3516
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq p2, v1, :cond_0

    .line 3518
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3519
    .local v0, "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3525
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraThreadCaptureStateChanged() - Photo capture stopped unexpectly, reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3514
    .end local v0    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    :cond_0
    :pswitch_0
    return-void

    .line 3519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/VideoCaptureState;Lcom/oneplus/camera/VideoCaptureState;)V
    .locals 4
    .param p1, "oldState"    # Lcom/oneplus/camera/VideoCaptureState;
    .param p2, "newState"    # Lcom/oneplus/camera/VideoCaptureState;

    .prologue
    const-wide/16 v2, -0x1

    .line 3536
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p2, v0, :cond_1

    .line 3539
    const/16 v0, -0x28

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 3542
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3534
    :cond_0
    :goto_0
    return-void

    .line 3545
    :cond_1
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq p2, v0, :cond_2

    .line 3547
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 3548
    :cond_2
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p2, v0, :cond_0

    .line 3550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordStartTime:J

    .line 3551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TotalPausedVideoRecordingTime:J

    .line 3553
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/oneplus/camera/CameraActivity;->updateElapsedRecordingTime(JJ)V

    goto :goto_0
.end method

.method private onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 10
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3669
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureCompleted() - Handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3672
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 3673
    .local v0, "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iput-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 3674
    iput v6, p0, Lcom/oneplus/camera/CameraActivity;->m_TouchDigits:I

    .line 3677
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 3680
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3691
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3693
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/CameraActivity$25;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$25;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 3707
    :cond_0
    :goto_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 3808
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 3667
    return-void

    .line 3683
    .restart local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3686
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3703
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_0

    .line 3704
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    goto :goto_1

    .line 3712
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3715
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3717
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3720
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_2

    .line 3721
    const/4 v0, 0x0

    .line 3724
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 3726
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Clear pending handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const/4 v0, 0x0

    .line 3731
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3734
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 3736
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Capture next photo immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    invoke-direct {p0, v0, v6, v6}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3738
    return-void

    .line 3743
    .restart local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3744
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3754
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_5
    :goto_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_6

    .line 3755
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v2, v3, :cond_6

    .line 3756
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v2, :cond_6

    .line 3758
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Continue stopping video recording"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v6}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3763
    :cond_6
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3749
    .restart local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureCompleted() - Activity state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 3771
    :pswitch_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3772
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 3774
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->resumeAudioPlayback()V

    .line 3777
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3778
    .local v1, "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    if-ne v1, v2, :cond_8

    .line 3779
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    check-cast v1, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3782
    .restart local v1    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3785
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_a

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3787
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3790
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    goto/16 :goto_2

    .line 3794
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3800
    :cond_a
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureCompleted() - Activity state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3707
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onCountDownTimerCancelled()V
    .locals 3

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3916
    return-void

    .line 3919
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3920
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3921
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$27;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$27;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 3932
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 3933
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3912
    :goto_0
    return-void

    .line 3935
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCountDownTimerCancelled() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCountDownTimerChanged(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    const/4 v3, 0x0

    .line 3943
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3944
    return-void

    .line 3946
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - Remaining seconds : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3949
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_4

    .line 3951
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 3953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3954
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3955
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3957
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - Capture photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    .line 3940
    :cond_1
    :goto_0
    return-void

    .line 3962
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - No capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 3966
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 3968
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/CameraActivity$28;-><init>(Lcom/oneplus/camera/CameraActivity;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3980
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCountDownTimerChanged() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3982
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultPhotoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 4135
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4137
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDefaultPhotoCaptureCompleted() - Unknown capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDefaultPhotoCaptureCompleted() - Expected capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    return-void

    .line 4143
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4132
    return-void
.end method

.method private onDefaultVideoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 4151
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4153
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDefaultVideoCaptureCompleted() - Unknown capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDefaultVideoCaptureCompleted() - Expected capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    return-void

    .line 4159
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4148
    return-void
.end method

.method private onGyroscopeValuesChanged([F)V
    .locals 14
    .param p1, "values"    # [F

    .prologue
    .line 4236
    const/4 v11, 0x0

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 4237
    .local v3, "diffX":F
    const/4 v11, 0x1

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 4238
    .local v4, "diffY":F
    const/4 v11, 0x2

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 4239
    .local v5, "diffZ":F
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    if-nez v11, :cond_0

    .line 4240
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    const/4 v13, 0x3

    new-array v13, v13, [F

    aput-object v13, v11, v12

    .line 4241
    :cond_0
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput v3, v11, v12

    .line 4242
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aput v4, v11, v12

    .line 4243
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aput v5, v11, v12

    .line 4244
    iget v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    array-length v12, v12

    rem-int/2addr v11, v12

    iput v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    .line 4245
    const/4 v0, 0x0

    .line 4246
    .local v0, "avgDiffX":F
    const/4 v1, 0x0

    .line 4247
    .local v1, "avgDiffY":F
    const/4 v2, 0x0

    .line 4248
    .local v2, "avgDiffZ":F
    const/4 v9, 0x0

    .line 4249
    .local v9, "sampleCount":I
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    array-length v11, v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_2

    .line 4251
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    aget-object v6, v11, v7

    .line 4252
    .local v6, "diffs":[F
    if-eqz v6, :cond_1

    .line 4254
    add-int/lit8 v9, v9, 0x1

    .line 4255
    const/4 v11, 0x0

    aget v11, v6, v11

    add-float/2addr v0, v11

    .line 4256
    const/4 v11, 0x1

    aget v11, v6, v11

    add-float/2addr v1, v11

    .line 4257
    const/4 v11, 0x2

    aget v11, v6, v11

    add-float/2addr v2, v11

    .line 4249
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 4260
    .end local v6    # "diffs":[F
    :cond_2
    int-to-float v11, v9

    div-float/2addr v0, v11

    .line 4261
    int-to-float v11, v9

    div-float/2addr v1, v11

    .line 4262
    int-to-float v11, v9

    div-float/2addr v2, v11

    .line 4264
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 4277
    .local v8, "maxAvgDiff":F
    const v11, 0x3ca3d70a    # 0.02f

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_3

    .line 4278
    const/16 v10, 0x64

    .line 4283
    .local v10, "stabilityLevel":I
    :goto_1
    invoke-direct {p0, v10}, Lcom/oneplus/camera/CameraActivity;->updateStabilityLevel(I)V

    .line 4234
    return-void

    .line 4279
    .end local v10    # "stabilityLevel":I
    :cond_3
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_4

    .line 4280
    const/4 v10, 0x0

    .restart local v10    # "stabilityLevel":I
    goto :goto_1

    .line 4282
    .end local v10    # "stabilityLevel":I
    :cond_4
    const v11, 0x3ca3d70a    # 0.02f

    sub-float v11, v8, v11

    const v12, 0x3ef5c28f    # 0.48f

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    sub-float v11, v12, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .restart local v10    # "stabilityLevel":I
    goto :goto_1
.end method

.method private onMediaFileSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4436
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4433
    return-void
.end method

.method private onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4443
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4440
    return-void
.end method

.method private onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4450
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4447
    return-void
.end method

.method private onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4457
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4454
    return-void
.end method

.method private onPermissionResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    const/4 v2, 0x0

    .line 4689
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4691
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    .line 4692
    .local v0, "settings":Lcom/oneplus/base/Settings;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 4693
    const-string/jumbo v1, "Location.Save"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4697
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_OptionalPermissions:Ljava/util/List;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4687
    .end local v0    # "settings":Lcom/oneplus/base/Settings;
    :cond_1
    return-void

    .line 4694
    .restart local v0    # "settings":Lcom/oneplus/base/Settings;
    :cond_2
    if-nez p2, :cond_0

    .line 4695
    const-string/jumbo v1, "Location.Save"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onPhotoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v2, 0x1

    .line 4737
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4739
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoCaptureStarted() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4740
    return-void

    .line 4743
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPhotoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4746
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v0, v2, :cond_1

    .line 4747
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4751
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 4763
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoCaptureStarted() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4764
    return-void

    .line 4754
    :sswitch_0
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4755
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4734
    :goto_0
    return-void

    .line 4758
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPhotoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4760
    invoke-static {p2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4751
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 10
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 4773
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4775
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPostviewReceived() - Invalid photo capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    return-void

    .line 4778
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 4780
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPostviewReceived() - Invalid internal capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    return-void

    .line 4785
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

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

    .line 4788
    .local v0, "newEvnetArgs":Lcom/oneplus/camera/CameraCaptureEventArgs;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4770
    return-void
.end method

.method private onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 4
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    const/4 v3, 0x0

    .line 4797
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    if-nez v0, :cond_0

    .line 4798
    return-void

    .line 4801
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4794
    :goto_0
    :pswitch_0
    return-void

    .line 4805
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0

    .line 4809
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    .line 4810
    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    goto :goto_0

    .line 4801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onRequestedOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 4819
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 4821
    .local v1, "oldRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getRequestedOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4837
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRequestedOrientationChanged() - Unsupported orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4838
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 4842
    .local v0, "newRotation":Lcom/oneplus/base/Rotation;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 4844
    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 4845
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, v0}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4817
    :cond_0
    return-void

    .line 4824
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_0
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4827
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_1
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4830
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_2
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4833
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_3
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4821
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 5
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 4997
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4999
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutter() - Unknown capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutter() - Expected capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5001
    return-void

    .line 5005
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4994
    return-void
.end method

.method private onSystemOrientationSettingsChanged(Z)V
    .locals 2
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 5044
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 5045
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 5046
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 5042
    :cond_0
    return-void
.end method

.method private onUnprocessedPictureReceived(Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    .prologue
    .line 5072
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 5069
    return-void
.end method

.method private onVideoCapturePaused(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Z)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "paused"    # Z

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 5114
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5116
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCapturePaused() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    return-void

    .line 5121
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5152
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCapturePaused() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    :goto_0
    return-void

    .line 5124
    :pswitch_0
    if-eqz p2, :cond_3

    .line 5126
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCapturePaused()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5127
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordingPausedTime:J

    .line 5129
    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordingPausedTime:J

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_LastElapsedRecordingTimeCheckTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    .line 5130
    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 5132
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCapturePaused() - Unexpected partial elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5133
    iput-wide v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    .line 5142
    :goto_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5149
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 5135
    :cond_1
    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 5137
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCapturePaused() - Unexpected partial elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    iput-wide v6, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    goto :goto_1

    .line 5141
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCapturePaused() - Partial elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5146
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCapturePaused() - Fail to pause"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5147
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 5121
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onVideoCaptureResumed(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Z)V
    .locals 12
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "resumed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5162
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5164
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureResumed() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    return-void

    .line 5169
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5199
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureResumed() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    :goto_0
    return-void

    .line 5172
    :pswitch_0
    if-eqz p2, :cond_2

    .line 5174
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureResumed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5181
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5182
    const-wide/16 v10, 0x3e8

    .line 5185
    .local v10, "interval":J
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 5186
    .local v8, "currentTime":J
    const-wide/16 v0, 0x0

    iget-wide v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ElapsedPartialRecordingTimeMillis:J

    sub-long v4, v10, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 5187
    .local v6, "recTimeUpdateDelay":J
    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TotalPausedVideoRecordingTime:J

    iget-wide v4, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordingPausedTime:J

    sub-long v4, v8, v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TotalPausedVideoRecordingTime:J

    .line 5188
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureResumed() - Update elapsed recording time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/16 v2, -0x28

    move-object v1, p0

    move v4, v3

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 5196
    .end local v6    # "recTimeUpdateDelay":J
    .end local v8    # "currentTime":J
    .end local v10    # "interval":J
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 5184
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    float-to-long v10, v0

    .restart local v10    # "interval":J
    goto :goto_1

    .line 5193
    .end local v10    # "interval":J
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureResumed() - Fail to resume"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5194
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 5169
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private onVideoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 5209
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5211
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureStarted() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5212
    return-void

    .line 5215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5218
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5235
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureStarted() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5236
    return-void

    .line 5221
    :pswitch_0
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 5222
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5223
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 5224
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 5225
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5226
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5206
    :cond_1
    :goto_0
    return-void

    .line 5229
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 5231
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 5232
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 5218
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private quickCapturePhoto()V
    .locals 4

    .prologue
    .line 5304
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    if-nez v1, :cond_0

    .line 5306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    .line 5307
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v2}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5302
    :cond_0
    :goto_0
    return-void

    .line 5314
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "IsQuickCaptureEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5316
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    .line 5318
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5320
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "quickCapturePhoto() - Ignore waiting for first camera preview frame for quick capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5321
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewReceived()V

    .line 5323
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "quickCapturePhoto() - Perform quick capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->disableSelfTimer()Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 5325
    .local v0, "disableSelfTimerHandle":Lcom/oneplus/base/Handle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    .line 5326
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->enableSelfTimer(Lcom/oneplus/base/Handle;)V

    goto :goto_0

    .line 5329
    .end local v0    # "disableSelfTimerHandle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quickCapturePhoto() - Fail to perform quick capture because current media type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5307
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 5342
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 5344
    new-instance v1, Lcom/oneplus/camera/CameraActivity$38;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$38;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 5405
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5406
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5407
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5408
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5409
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 5410
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5339
    return-void
.end method

.method private releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 5417
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5418
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 5415
    return-void
.end method

.method private removeScreenShot()V
    .locals 1

    .prologue
    .line 5432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    .line 5430
    return-void
.end method

.method private removeScreenShot(Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v2, 0x0

    .line 5438
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5436
    :cond_0
    :goto_0
    return-void

    .line 5440
    :cond_1
    if-eqz p1, :cond_2

    .line 5442
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5446
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5448
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeScreenShot()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5449
    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 5450
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5451
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 5443
    :cond_3
    return-void
.end method

.method private resetIdleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x32

    .line 5482
    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5483
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5484
    .local v0, "isRunning":Z
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    if-eqz v1, :cond_1

    .line 5486
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetIdleState()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5489
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    .line 5492
    if-eqz v0, :cond_0

    .line 5493
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5496
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5498
    :cond_1
    if-nez v0, :cond_2

    .line 5499
    return-void

    .line 5500
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5507
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 5517
    :pswitch_1
    const-wide/32 v2, 0x1d4c0

    invoke-static {p0, v4, v5, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 5480
    return-void

    .line 5505
    :pswitch_2
    return-void

    .line 5515
    :pswitch_3
    return-void

    .line 5500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5507
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private resetPhotoCaptureState()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 5524
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5522
    :cond_0
    :goto_0
    return-void

    .line 5527
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_1

    .line 5528
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5527
    if-eqz v1, :cond_1

    .line 5531
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5534
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 5535
    .local v0, "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 5536
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 5538
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetPhotoCaptureState() - Capture next photo immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5539
    invoke-direct {p0, v0, v6, v6}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5540
    return-void

    .line 5544
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5547
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 5554
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5551
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5547
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private resetVideoCaptureState()V
    .locals 2

    .prologue
    .line 5565
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 5566
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 5567
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5565
    if-eqz v0, :cond_0

    .line 5569
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5563
    :goto_0
    return-void

    .line 5572
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    .prologue
    .line 5580
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5581
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5589
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot restore recording time ratio when capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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

    .line 5593
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5594
    return-void

    .line 5595
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreRecordingTimeRatio() - Ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

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

    .line 5577
    return-void

    .line 5581
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

.method private restoreSettings(Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    .prologue
    .line 5603
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5606
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5607
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 5609
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreSettings() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    return-void

    .line 5613
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSettings() - Handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5616
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5617
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 5619
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5621
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    .line 5622
    .local v1, "prevHandle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v3, v1, Lcom/oneplus/camera/CameraActivity$SettingsHandle;->settings:Lcom/oneplus/base/Settings;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5600
    .end local v1    # "prevHandle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    :cond_1
    :goto_0
    return-void

    .line 5626
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreSettings() - All settings are removed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5627
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreToDefaultCamera()V
    .locals 3

    .prologue
    .line 5636
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreToDefaultCamera()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5637
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "CameraLensFacing"

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5638
    sget-object v0, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Z

    .line 5634
    return-void
.end method

.method private restoreToDefaultSelfTimerInterval()V
    .locals 2

    .prologue
    .line 5645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    .line 5646
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_0

    .line 5647
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 5643
    :cond_0
    return-void
.end method

.method private scheduleQuickCapturePhoto(Z)V
    .locals 4
    .param p1, "delayed"    # Z

    .prologue
    .line 5713
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    if-eqz v0, :cond_1

    .line 5714
    :cond_0
    return-void

    .line 5715
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5724
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleQuickCapturePhoto() - Cannot schedule quick-capture, current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5725
    return-void

    .line 5727
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleQuickCapturePhoto()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    .line 5729
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x12c

    :goto_0
    const/16 v3, -0x8c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5711
    return-void

    .line 5729
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 5715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setSelfTimerIntervalProp(J)Z
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 6163
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 6164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Self timer interval cannot be negative."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6167
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6168
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 6170
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSelfTimerIntervalProp() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6171
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6172
    const/4 v2, 0x0

    return v2

    .line 6176
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_2

    const-string/jumbo v1, "SelfTimer.Back"

    .line 6177
    .local v1, "key":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6180
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 6176
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "SelfTimer.Front"

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private setupWindowFlags()V
    .locals 4

    .prologue
    .line 5970
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5971
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5974
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5975
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5980
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5967
    return-void

    .line 5977
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private startAccelerometer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 6292
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 6298
    return-void

    .line 6302
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 6303
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 6306
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6307
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 6308
    .local v1, "isFrontCamera":Z
    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-nez v3, :cond_1

    .line 6311
    if-eqz v1, :cond_3

    .line 6314
    const/4 v2, 0x1

    .line 6315
    .local v2, "sensorDelay":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 6316
    iput-boolean v6, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    .line 6317
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAccelerometer() - Accelerometer started"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6289
    .end local v2    # "sensorDelay":I
    :cond_1
    return-void

    .line 6307
    .end local v1    # "isFrontCamera":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isFrontCamera":Z
    goto :goto_0

    .line 6312
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "sensorDelay":I
    goto :goto_1

    .line 6292
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startCameraPreview(Z)Z
    .locals 12
    .param p1, "checkPreviewState"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 6399
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6400
    if-eqz p1, :cond_0

    .line 6402
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6414
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6416
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Cannot start preview in current state"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6417
    return v10

    .line 6407
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6411
    :pswitch_2
    return v11

    .line 6421
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 6422
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 6424
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - No camera to start preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6425
    return v10

    .line 6428
    :cond_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 6430
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6431
    return v10

    .line 6435
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_4

    .line 6437
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.camera.ACTION_CAMERA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6440
    :cond_4
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    .line 6443
    .local v3, "cameraPreviewSessionID":I
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-nez v0, :cond_5

    .line 6445
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Preview receiver is not ready yet, start preview later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6446
    return v11

    .line 6449
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startCameraPreview() - Camera : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6452
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/Resolution;

    .line 6453
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/media/Resolution;

    .line 6454
    :goto_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_9

    move-object v7, v5

    .line 6455
    .local v7, "targetResolution":Lcom/oneplus/camera/media/Resolution;
    :goto_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 6456
    .local v6, "previewSize":Landroid/util/Size;
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    .line 6457
    .local v8, "previewReceiver":Ljava/lang/Object;
    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v0, Lcom/oneplus/camera/CameraActivity$41;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/CameraActivity$41;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;ILcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)V

    invoke-static {v9, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6538
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6539
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_6

    .line 6540
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 6541
    :cond_6
    return v10

    .line 6452
    .end local v6    # "previewSize":Landroid/util/Size;
    .end local v7    # "targetResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v8    # "previewReceiver":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x0

    .local v4, "photoResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_1

    .line 6453
    .end local v4    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_8
    const/4 v5, 0x0

    .local v5, "videoResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_2

    .line 6454
    .end local v5    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_9
    move-object v7, v4

    .restart local v7    # "targetResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_3

    .line 6545
    .restart local v6    # "previewSize":Landroid/util/Size;
    .restart local v8    # "previewReceiver":Ljava/lang/Object;
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6546
    const-string/jumbo v0, "CameraPreviewStartStop"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 6549
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6551
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p0, v9, v10

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 6552
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->bindToNormalComponents()Z

    .line 6556
    :cond_c
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startOrientationListener()V

    .line 6559
    return v11

    .line 6402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startOrientationListener()V
    .locals 4

    .prologue
    .line 6567
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6568
    return-void

    .line 6569
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6575
    return-void

    .line 6579
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6581
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-nez v0, :cond_1

    .line 6583
    new-instance v0, Lcom/oneplus/camera/CameraActivity$42;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$42;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 6608
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 6612
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6613
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 6614
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6564
    return-void

    .line 6569
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopAccelerometer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6622
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 6623
    return-void

    .line 6626
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-eqz v0, :cond_1

    .line 6628
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6629
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    .line 6630
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAccelerometer() - Accelerometer stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6632
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    if-eqz v0, :cond_2

    .line 6634
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6635
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    .line 6636
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAccelerometer() - Gyroscope stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6638
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    .line 6619
    return-void
.end method

.method private stopOrientationListener()V
    .locals 2

    .prologue
    .line 6730
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6731
    return-void

    .line 6732
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6733
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 6734
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6728
    return-void
.end method

.method private stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 6742
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6743
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 6745
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6746
    return-void

    .line 6749
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPhotoCapture() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6752
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 6755
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-ne v0, p1, :cond_1

    .line 6757
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Cancel pending capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 6759
    return-void

    .line 6763
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6765
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Stop self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6766
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6767
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 6768
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$43;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$43;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 6777
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 6778
    return-void

    .line 6782
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 6789
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPhotoCapture() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6790
    return-void

    .line 6786
    :sswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6794
    const/16 v0, -0x82

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 6797
    const/16 v0, -0x96

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 6800
    iget-object v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6801
    iget-object v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 6739
    :goto_0
    return-void

    .line 6804
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Stop when starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6805
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread;->stopCurrentPhotoCapture()V

    goto :goto_0

    .line 6782
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z

    .prologue
    .line 6813
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    .line 6811
    return-void
.end method

.method private stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZLcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z
    .param p4, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 6818
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6819
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 6821
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6822
    return-void

    .line 6825
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoCapture() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", from camera thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6826
    if-eqz p2, :cond_1

    .line 6827
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop from video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6830
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6833
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 6836
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 6852
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoCapture() - Video capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6853
    return-void

    .line 6839
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop while pausing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6855
    :goto_0
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6858
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6859
    const-string/jumbo v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 6862
    :cond_2
    const/16 v1, -0x28

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 6865
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 6873
    if-nez p2, :cond_3

    if-eqz p3, :cond_5

    .line 6878
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 6883
    :goto_1
    :pswitch_3
    iget-object v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6885
    const/4 v0, 0x0

    .line 6886
    .local v0, "flags":I
    iget v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 6887
    const/4 v0, 0x2

    .line 6888
    :cond_4
    iget-object v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 6815
    .end local v0    # "flags":I
    :goto_2
    return-void

    .line 6842
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop while resuming"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6845
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop while starting"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6870
    :pswitch_6
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_1

    .line 6875
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Waiting for video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6876
    return-void

    .line 6891
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop when starting"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch

    .line 6865
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private switchCamera(Lcom/oneplus/camera/Camera;)Z
    .locals 2
    .param p1, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 7035
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method private switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera$LensFacing;I)Z
    .locals 7
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6995
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6998
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6999
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 7000
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7003
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v3, p2, :cond_1

    .line 7005
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchCamera() - Camera is locked to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7006
    return v6

    .line 7010
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7011
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7013
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - Camera list is not ready yet, switch camera later"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7014
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7015
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "CameraLensFacing"

    invoke-virtual {v3, v4, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7016
    :cond_2
    return v5

    .line 7018
    :cond_3
    invoke-static {v1, p2, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 7019
    .local v2, "newCamera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_4

    .line 7021
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchCamera() - No camera with lens facing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7022
    return v6

    .line 7024
    :cond_4
    if-ne v0, v2, :cond_5

    .line 7025
    return v5

    .line 7028
    :cond_5
    invoke-direct {p0, p1, v2, p3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    move-result v3

    return v3
.end method

.method private switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z
    .locals 7
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7040
    if-ne p1, p2, :cond_0

    .line 7042
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Switch to same camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7043
    return v6

    .line 7047
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7049
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Required permissions not granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7050
    return v5

    .line 7054
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 7060
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchCamera() - Photo capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7061
    return v5

    .line 7063
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 7069
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchCamera() - Video capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7070
    return v5

    .line 7072
    :pswitch_1
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_2

    .line 7074
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7076
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Camera is switching"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7077
    return v5

    .line 7082
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7085
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7086
    const-string/jumbo v2, "CameraSwitchStartStop"

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 7089
    :cond_3
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_5

    .line 7091
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_7

    .line 7094
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_4

    .line 7095
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v2, v3, :cond_4

    .line 7097
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Preview cover is closing, ignore to switch camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7098
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7099
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 7100
    return v5

    .line 7104
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Show preview cover"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7105
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 7106
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7108
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 7116
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - No need to show preview cover"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7127
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7131
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 7138
    const/4 v0, 0x0

    .line 7141
    .local v0, "restartPreview":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    .line 7142
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_8

    .line 7144
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchCamera() - Preview state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7147
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7150
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 7151
    return v5

    .line 7113
    .end local v0    # "restartPreview":Z
    :pswitch_3
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    .line 7114
    return v6

    .line 7121
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Cannot show preview cover"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7124
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Cannot start switch animation"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7135
    :pswitch_4
    const/4 v0, 0x1

    .line 7136
    .restart local v0    # "restartPreview":Z
    goto :goto_1

    .line 7155
    :cond_8
    if-eqz p1, :cond_9

    .line 7156
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, p1}, Lcom/oneplus/camera/CameraThread;->closeCamera(Lcom/oneplus/camera/Camera;)V

    .line 7159
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, p2}, Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v1

    .line 7160
    .local v1, "success":Z
    if-eqz v1, :cond_c

    .line 7162
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7163
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7164
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "CameraLensFacing"

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7170
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopAccelerometer()V

    .line 7173
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7177
    :cond_b
    :goto_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7180
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 7183
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 7186
    return v1

    .line 7167
    :cond_c
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Fail to open camera by camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7174
    :cond_d
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Fail to restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7054
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 7063
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 7108
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 7131
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private unlockCamera(Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    .prologue
    const/4 v3, 0x0

    .line 7213
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 7216
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7218
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unlockCamera()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7221
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7225
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 7232
    const/4 v2, 0x1

    .line 7237
    .local v2, "restartPreview":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    .line 7239
    .local v0, "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    if-eqz v2, :cond_1

    :goto_1
    or-int/lit8 v1, v3, 0x4

    .line 7240
    .local v1, "flags":I
    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v4, v3, v1}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    .line 7210
    .end local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    .end local v1    # "flags":I
    .end local v2    # "restartPreview":Z
    :cond_0
    return-void

    .line 7229
    :pswitch_0
    const/4 v2, 0x0

    .line 7230
    .restart local v2    # "restartPreview":Z
    goto :goto_0

    .line 7239
    .restart local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    :cond_1
    const/16 v3, 0x20

    goto :goto_1

    .line 7225
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private unlockRotation(Lcom/oneplus/camera/CameraActivity$RotationLockHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$RotationLockHandle;

    .prologue
    .line 7249
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 7252
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7253
    return-void

    .line 7256
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7258
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unlockRotation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7259
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 7260
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_1

    .line 7261
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 7246
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_1
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 7269
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 7271
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceivers()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7272
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7267
    :cond_0
    return-void
.end method

.method private updateBurstEnablingState()V
    .locals 5

    .prologue
    .line 7281
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v2}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 7295
    :pswitch_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 7296
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 7299
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Camera is null, disable burst"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7300
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7301
    return-void

    .line 7288
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Activity exited, ignore it."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7289
    return-void

    .line 7306
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_1

    .line 7307
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    .line 7306
    if-nez v2, :cond_1

    .line 7308
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7309
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7314
    const/4 v1, 0x1

    .line 7315
    .local v1, "isEnabled":Z
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7317
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Burst enabled : "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7278
    return-void

    .line 7311
    .end local v1    # "isEnabled":Z
    :cond_1
    const/4 v1, 0x0

    .line 7310
    .restart local v1    # "isEnabled":Z
    goto :goto_0

    .line 7281
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateElapsedRecordingTime(JJ)V
    .locals 27
    .param p1, "lastCheckTime"    # J
    .param p3, "seconds"    # J

    .prologue
    .line 7325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 7326
    .local v20, "checkTime":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraActivity;->m_LastElapsedRecordingTimeCheckTime:J

    .line 7327
    const-wide/16 v4, 0x1

    add-long p3, p3, v4

    .line 7328
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7331
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 7332
    .local v24, "maxSeconds":J
    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-ltz v4, :cond_0

    cmp-long v4, p3, v24

    if-ltz v4, :cond_0

    .line 7334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateElapsedRecordingTime() - Max duration ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sec) reached."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7335
    return-void

    .line 7340
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7341
    const-wide/16 v18, 0x3e8

    .line 7346
    .local v18, "interval":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordStartTime:J

    sub-long v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraActivity;->m_TotalPausedVideoRecordingTime:J

    sub-long v22, v4, v6

    .line 7348
    .local v22, "diffFromStartTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    .line 7350
    const-wide/16 v4, 0x1

    add-long v4, v4, p3

    mul-long v4, v4, v18

    sub-long v10, v4, v22

    .line 7351
    .local v10, "delay":J
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const/16 v6, -0x28

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 7322
    .end local v10    # "delay":J
    :goto_1
    return-void

    .line 7343
    .end local v18    # "interval":J
    .end local v22    # "diffFromStartTime":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v4, v5, v4

    float-to-long v0, v4

    move-wide/from16 v18, v0

    .restart local v18    # "interval":J
    goto :goto_0

    .line 7354
    .restart local v22    # "diffFromStartTime":J
    :cond_2
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v17, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v17, v5

    const/16 v14, -0x28

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v19}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_1
.end method

.method private updateScreenShotRotation()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 7380
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 7381
    :cond_0
    return-void

    .line 7383
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 7384
    .local v2, "wm":Landroid/view/WindowManager;
    if-nez v2, :cond_2

    .line 7386
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateScreenShotRotation() - WindowManager is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7387
    return-void

    .line 7389
    :cond_2
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7390
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_3

    .line 7392
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateScreenShotRotation() - display is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7393
    return-void

    .line 7395
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 7399
    .local v3, "wmRotation":I
    const/4 v1, 0x1

    .line 7401
    .local v1, "isScreenShotNeeded":Z
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_4

    .line 7402
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 7406
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 7421
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .line 7424
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 7425
    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7426
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateScreenShotRotation() - Window Manager rotation : "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", visible : "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7377
    return-void

    .line 7404
    :cond_4
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 7409
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7410
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 7413
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7414
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 7417
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7418
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 7421
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 7425
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 7406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 7361
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 7362
    :cond_0
    return-void

    .line 7364
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->isSameAsWindowManagerRotation(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7366
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation()V

    .line 7367
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateScreenShotRotation() - the same with window rotation:"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7358
    :goto_0
    return-void

    .line 7371
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CheckRotationStartTime:J

    .line 7372
    const/16 v1, -0x64

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    goto :goto_0
.end method

.method private updateScreenSize()V
    .locals 4

    .prologue
    .line 7433
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 7434
    .local v0, "size":Lcom/oneplus/base/ScreenSize;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7435
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreenSize() - Screen size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7436
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_1

    .line 7437
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/CameraThread;->setScreenSize(Lcom/oneplus/base/ScreenSize;)V

    .line 7431
    :cond_1
    return-void

    .line 7433
    .end local v0    # "size":Lcom/oneplus/base/ScreenSize;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateSelfTimerInterval()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 7445
    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-nez v5, :cond_0

    .line 7446
    return-void

    .line 7449
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-eq v5, v6, :cond_1

    .line 7451
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7452
    return-void

    .line 7456
    :cond_1
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 7457
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 7459
    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSelfTimerInterval() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7460
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7461
    return-void

    .line 7465
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Settings;

    .line 7466
    .local v4, "settings":Lcom/oneplus/base/Settings;
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    if-eqz v5, :cond_3

    .line 7468
    const-string/jumbo v5, "SelfTimer.Back"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7469
    const-string/jumbo v5, "SelfTimer.Front"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7470
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    .line 7474
    :cond_3
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v5, v6, :cond_4

    const-string/jumbo v1, "SelfTimer.Back"

    .line 7475
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v1}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 7476
    .local v2, "seconds":J
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7442
    return-void

    .line 7474
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "seconds":J
    :cond_4
    const-string/jumbo v1, "SelfTimer.Front"

    goto :goto_0
.end method

.method private updateSelfTimerUsability()V
    .locals 3

    .prologue
    .line 7484
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    .line 7485
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7490
    const/4 v0, 0x1

    .line 7491
    .local v0, "isUsable":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7481
    return-void

    .line 7487
    .end local v0    # "isUsable":Z
    :cond_0
    const/4 v0, 0x0

    .line 7486
    .restart local v0    # "isUsable":Z
    goto :goto_0
.end method

.method private updateStabilityLevel(I)V
    .locals 5
    .param p1, "stabilityLevel"    # I

    .prologue
    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 7499
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7500
    .local v0, "prevStabilityLevel":I
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7512
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lt p1, v3, :cond_0

    if-lt v0, v3, :cond_0

    .line 7514
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStabilityLevel() - Capture photo for stable capture, stability level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7515
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7516
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    .line 7496
    :cond_0
    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 4

    .prologue
    .line 7525
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-eqz v2, :cond_0

    .line 7526
    return-void

    .line 7529
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7532
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7533
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 7534
    return-void

    .line 7537
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 7538
    .local v1, "visibility":I
    or-int/lit16 v2, v1, 0x800

    or-int/lit16 v2, v2, 0x200

    or-int/lit8 v2, v2, 0x2

    or-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 7522
    return-void
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 971
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 968
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected canStartCameraPreview()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1211
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1217
    return v2

    .line 1221
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1224
    return v2

    .line 1228
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1229
    return v2

    .line 1233
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canStartCameraPreview() - Required permissions not granted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    return v2

    .line 1240
    :cond_2
    return v3

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canVideoSnapshot()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1250
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1266
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "canVideoSnapshot() - Unknown media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    return v3

    .line 1253
    :pswitch_0
    return v3

    .line 1255
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    return v3

    .line 1257
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1263
    return v3

    .line 1261
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1257
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final capturePhoto()Lcom/oneplus/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 1278
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(I)Lcom/oneplus/camera/CaptureHandle;
    .locals 1
    .param p1, "frameCount"    # I

    .prologue
    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;
    .locals 10
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1305
    if-nez p1, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Invalid frame count"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-object v7

    .line 1312
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1313
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-nez v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - No camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    return-object v7

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_2

    .line 1320
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - No capture mode manager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    return-object v7

    .line 1323
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1326
    .local v3, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->cancelQuickCaptures()V

    .line 1329
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1365
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capturePhoto() - Capture state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    return-object v7

    .line 1334
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1336
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Counting-down self timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-object v7

    .line 1341
    :cond_4
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1343
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_6

    .line 1344
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1347
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_5

    .line 1348
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iput-boolean v8, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->isVideoSnapshot:Z

    .line 1349
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capturePhoto() - Start capture after current capture completes, pending handle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1346
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_0

    .line 1352
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fast shot-to-shot is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    return-object v7

    .line 1355
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_3

    .line 1357
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_8

    .line 1358
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1361
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capturePhoto() - Start capture after capture state ready, pending handle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1360
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_1

    .line 1368
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_9

    .line 1370
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capturePhoto() - Activity state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-object v7

    .line 1375
    :cond_9
    if-eq p1, v8, :cond_a

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1380
    :cond_a
    :goto_2
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V

    .line 1381
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_b

    .line 1382
    iput-boolean v8, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->isVideoSnapshot:Z

    .line 1383
    :cond_b
    if-ne p1, v8, :cond_c

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureDelayTimeHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1387
    :cond_c
    :goto_3
    invoke-direct {p0, v0, v9, v9}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1389
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1391
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1392
    return-object v7

    .line 1377
    .end local v0    # "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_d
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Burst capture is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const/4 p1, 0x1

    goto :goto_2

    .line 1384
    .restart local v0    # "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_e
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureDelayTimeHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;

    iget-wide v4, v1, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;->delayTimeMillis:J

    iput-wide v4, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->delayTimeMillis:J

    goto :goto_3

    .line 1396
    :cond_f
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final captureVideo()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->captureVideo(I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public captureVideo(I)Lcom/oneplus/camera/CaptureHandle;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 1568
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1569
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "captureVideo() - Video capture state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    return-object v6

    .line 1574
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_1

    .line 1576
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No capture mode manager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    return-object v6

    .line 1579
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1582
    .local v3, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->cancelQuickCaptures()V

    .line 1585
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;I)V

    .line 1588
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->captureVideo(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1589
    return-object v6

    .line 1590
    :cond_2
    return-object v0
.end method

.method public completeCapture(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 1948
    if-nez p1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeCapture() - No handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    return-void

    .line 1953
    :cond_0
    instance-of v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_1

    .line 1955
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    return-void

    .line 1960
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    move-object v0, p1

    .line 1963
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1964
    .local v0, "handleImpl":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1945
    :goto_0
    return-void

    .line 1967
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1970
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableBurstPhotoCapture()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 2060
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2063
    new-instance v0, Lcom/oneplus/camera/CameraActivity$15;

    const-string/jumbo v1, "BurstDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$15;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 2071
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2074
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2075
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2078
    :cond_0
    return-object v0
.end method

.method public disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 2089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "usage"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 2105
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2106
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 2108
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2117
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableCaptureUI() - Activity state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const/4 v1, 0x0

    return-object v1

    .line 2123
    :cond_0
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V

    .line 2124
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2125
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableCaptureUI() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2129
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2132
    :cond_1
    return-object v0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public disableFastShotToShot()Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2143
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2146
    new-instance v0, Lcom/oneplus/camera/CameraActivity$16;

    const-string/jumbo v1, "FastShotToShotDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$16;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 2154
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2157
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2158
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 2157
    if-eqz v1, :cond_0

    .line 2159
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    .line 2161
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 2162
    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 2164
    :cond_0
    return-object v0
.end method

.method public disableSelfTimer()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 2175
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2178
    new-instance v0, Lcom/oneplus/camera/CameraActivity$17;

    const-string/jumbo v1, "SelfTimerDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$17;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 2186
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2189
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2191
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2192
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2194
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableSelfTimer() - Stop self-timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 2200
    :cond_0
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 2210
    .local v7, "action":I
    if-nez v7, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Action="

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", x="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, ", y="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2214
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2217
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_LastNavBarVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Cancel touch event after showing navigation bar"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iput-boolean v12, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 2225
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 2231
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_3

    .line 2232
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2248
    :goto_0
    if-eq v7, v12, :cond_1

    if-ne v7, v13, :cond_2

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Action="

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", x="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, ", y="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2251
    iput-boolean v11, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 2252
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->checkTouchDigits(FF)V

    .line 2259
    :cond_2
    return v10

    .line 2235
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2236
    .local v9, "fakeEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2237
    invoke-super {p0, v9}, Lcom/oneplus/camera/BaseCameraActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2238
    .local v10, "result":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2242
    .end local v9    # "fakeEvent":Landroid/view/MotionEvent;
    .end local v10    # "result":Z
    :catch_0
    move-exception v8

    .line 2243
    .local v8, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Unhandled error"

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2244
    const/4 v10, 0x0

    .local v10, "result":Z
    goto :goto_0
.end method

.method public enterSimpleUIMode()Lcom/oneplus/base/Handle;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2313
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2316
    new-instance v0, Lcom/oneplus/camera/CameraActivity$18;

    const-string/jumbo v1, "SimpleUIMode"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$18;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 2324
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enterSimpleUIMode() - Handle count : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2328
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SimpleUIModeHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2329
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2332
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

    .line 2357
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 2359
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

    .line 2368
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 2370
    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    return-object v0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
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
    .line 2379
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 2381
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2384
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    return-object v0

    .line 2385
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 2387
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 2388
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    return-object v0

    .line 2389
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2390
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2391
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_QUICK_CAPTURE_SCHEDULED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2392
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2393
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2394
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2395
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2396
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 2397
    :cond_7
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraThread()Lcom/oneplus/camera/CameraThread;
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    return-object v0
.end method

.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2445
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 2448
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2449
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OptionalPermissions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2442
    return-void
.end method

.method public final getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;
    .locals 5

    .prologue
    .line 2467
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_0

    .line 2469
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v2, Lcom/oneplus/camera/media/ResolutionManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 2470
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v1, :cond_1

    .line 2472
    new-instance v0, Lcom/oneplus/camera/CameraActivity$19;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$19;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 2480
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2481
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2482
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2483
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$20;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$20;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2493
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2498
    .end local v0    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v1

    .line 2496
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getResolutionManager() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStartMode()Lcom/oneplus/camera/StartMode;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    return-object v0
.end method

.method public final getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;
    .locals 4

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 2511
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$21;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$21;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2529
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object v0

    .line 2527
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToComponents() - No Viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2539
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2537
    :cond_0
    :goto_0
    return-void

    .line 2542
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStartFailed(Lcom/oneplus/camera/Camera;I)V

    goto :goto_0

    .line 2546
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStarted(Lcom/oneplus/camera/Camera;I)V

    goto :goto_0

    .line 2551
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2552
    .local v0, "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/base/EventKey;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadEventReceived(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 2558
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2559
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/base/PropertyKey;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/base/PropertyChangeEventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadPropertyChanged(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0

    .line 2564
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_2

    :goto_2
    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 2568
    :sswitch_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage() - Close all cameras"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 2570
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->closeCameras()V

    goto :goto_0

    .line 2574
    :sswitch_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2578
    :sswitch_7
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->idle()V

    goto :goto_0

    .line 2583
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2584
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 2590
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2591
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 2596
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_a
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureScheduled:Z

    .line 2597
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->quickCapturePhoto()V

    goto/16 :goto_0

    .line 2601
    :sswitch_b
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_0

    .line 2604
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    .line 2605
    .local v1, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v1, :cond_3

    .line 2606
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2607
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 2608
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2613
    .end local v1    # "rotation":Lcom/oneplus/base/Rotation;
    :sswitch_c
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2615
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage() - Capture photo for stable capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2617
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v2, v5, v4}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    goto/16 :goto_0

    .line 2623
    :sswitch_d
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MSG_UPDATE_DELAYED_ROTATION"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2625
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/base/Rotation;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    goto/16 :goto_0

    .line 2631
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2632
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/oneplus/camera/CameraActivity;->updateElapsedRecordingTime(JJ)V

    goto/16 :goto_0

    .line 2637
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto/16 :goto_0

    .line 2641
    :sswitch_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->checkScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto/16 :goto_0

    .line 2645
    :sswitch_11
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    goto/16 :goto_0

    .line 2650
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2651
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto/16 :goto_0

    .line 2657
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    :goto_3
    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/CameraActivity;->onVideoCapturePaused(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Z)V

    goto/16 :goto_0

    :cond_4
    move v4, v5

    goto :goto_3

    .line 2663
    :sswitch_14
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    :goto_4
    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureResumed(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Z)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_4

    .line 2669
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2670
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v5

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v4

    check-cast v3, Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 2676
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_16
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MSG_FINISH_BY_SELF"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 2539
    :sswitch_data_0
    .sparse-switch
        -0x96 -> :sswitch_4
        -0x8c -> :sswitch_a
        -0x82 -> :sswitch_c
        -0x6e -> :sswitch_5
        -0x64 -> :sswitch_10
        -0x5f -> :sswitch_d
        -0x5a -> :sswitch_f
        -0x50 -> :sswitch_11
        -0x46 -> :sswitch_6
        -0x3c -> :sswitch_b
        -0x33 -> :sswitch_16
        -0x32 -> :sswitch_7
        -0x28 -> :sswitch_e
        -0x21 -> :sswitch_14
        -0x20 -> :sswitch_13
        -0x1f -> :sswitch_15
        -0x1e -> :sswitch_12
        -0x15 -> :sswitch_9
        -0x14 -> :sswitch_8
        -0xb -> :sswitch_1
        -0xa -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public hideReviewScreen()V
    .locals 3

    .prologue
    .line 2688
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 2691
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_2

    .line 2692
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 2685
    :cond_0
    :goto_1
    return-void

    .line 2688
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2693
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1
.end method

.method protected final ignoreNavigationBar()V
    .locals 1

    .prologue
    .line 2717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    .line 2715
    return-void
.end method

.method public isBusinessCardMode()Z
    .locals 2

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->BUSINESS_CARD:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2787
    const/4 v0, 0x1

    return v0

    .line 2789
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPhotoServiceMode()Z
    .locals 2

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2728
    const/4 v0, 0x1

    return v0

    .line 2730
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureMode()Z
    .locals 2

    .prologue
    .line 2798
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2805
    const/4 v0, 0x0

    return v0

    .line 2803
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2798
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    .line 2816
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 2823
    const/4 v0, 0x0

    return v0

    .line 2821
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2816
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public isVideoServiceMode()Z
    .locals 2

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2848
    const/4 v0, 0x1

    return v0

    .line 2850
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 2861
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public lockCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2874
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2875
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v3, v4, :cond_0

    .line 2877
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - Activity state is DESTROYED"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    return-object v6

    .line 2882
    :cond_0
    if-nez p1, :cond_1

    .line 2884
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - No lens facing specified"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    return-object v6

    .line 2889
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v3, p1, :cond_2

    .line 2891
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockCamera() - Camera is locked to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    return-object v6

    .line 2896
    :cond_2
    new-instance v1, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera$LensFacing;)V

    .line 2897
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$CameraLockHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2898
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockCamera() - Lens facing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 2902
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 2903
    .local v2, "oldCamera":Lcom/oneplus/camera/Camera;
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    invoke-direct {v0, v2, v7}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Lcom/oneplus/camera/Camera;Z)V

    .line 2904
    .local v0, "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2907
    or-int/lit8 v3, p2, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2909
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - Fail to switch camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2911
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 2912
    return-object v6

    .line 2914
    :cond_3
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2916
    .end local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    .end local v2    # "oldCamera":Lcom/oneplus/camera/Camera;
    :cond_4
    return-object v1
.end method

.method public lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2928
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2931
    if-nez p1, :cond_2

    .line 2932
    iget-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2940
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    .line 2941
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$RotationLockHandle;
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2942
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 2944
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockRotation() - Rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2946
    .local v1, "prevRotation":Lcom/oneplus/base/Rotation;
    if-eq v1, p1, :cond_1

    .line 2948
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2949
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2950
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2951
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2952
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2954
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 2955
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2959
    .end local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_1
    return-object v0

    .line 2933
    .end local v0    # "handle":Lcom/oneplus/camera/CameraActivity$RotationLockHandle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;

    iget-object v2, v2, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;->rotation:Lcom/oneplus/base/Rotation;

    if-eq v2, p1, :cond_0

    .line 2935
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockRotation() - Rotation is already locked in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    return-object v6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3077
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;

    .line 3078
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;
    if-eqz v0, :cond_0

    .line 3080
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3081
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    if-eqz v1, :cond_0

    .line 3082
    iget-object v1, v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 3084
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/BaseCameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3075
    return-void
.end method

.method protected onAvailableCamerasChanged(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3096
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v7

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v6}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 3105
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3106
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    const/4 v4, 0x1

    .line 3107
    .local v4, "selectCamera":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3109
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3111
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailableCamerasChanged() - Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not contained in new list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    const/4 v4, 0x1

    .line 3117
    :cond_0
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3120
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3122
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Required permissions not granted yet"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    return-void

    .line 3100
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v4    # "selectCamera":Z
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Already destroyed, skip"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    return-void

    .line 3106
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "selectCamera":Z
    goto :goto_0

    .line 3127
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3129
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Empty camera list"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    new-instance v6, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-direct {v6, v9, v10}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 3131
    return-void

    .line 3135
    :cond_4
    if-nez v4, :cond_5

    .line 3136
    return-void

    .line 3139
    :cond_5
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    .line 3140
    .local v5, "settings":Lcom/oneplus/base/Settings;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3141
    const-string/jumbo v6, "CameraLensFacing"

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3144
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->isStartedInSelfieMode()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3145
    const-string/jumbo v6, "CameraLensFacing"

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3150
    :goto_1
    const-string/jumbo v6, "CameraLensFacing"

    const-class v7, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$LensFacing;

    .line 3151
    .local v2, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 3152
    if-nez v0, :cond_7

    .line 3154
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailableCamerasChanged() - No camera with lens facing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", select another camera"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v6, :cond_e

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    .line 3156
    :goto_2
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 3158
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailableCamerasChanged() - Default camera : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3163
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v2, v6, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 3164
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v3

    .line 3165
    .local v3, "lockedCamera":Lcom/oneplus/camera/Camera;
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailableCamerasChanged() - Locked camera : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    if-eqz v3, :cond_8

    .line 3168
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iput-object v0, v6, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .line 3169
    move-object v0, v3

    .line 3174
    .end local v3    # "lockedCamera":Lcom/oneplus/camera/Camera;
    :cond_8
    if-nez v0, :cond_9

    .line 3175
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - No camera to use"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    :cond_9
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3180
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v7

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v6}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v6

    aget v6, v7, v6

    sparse-switch v6, :sswitch_data_0

    .line 3188
    const/4 v1, 0x0

    .line 3193
    .local v1, "isRunning":Z
    :goto_3
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3197
    :cond_a
    :goto_4
    iget-boolean v6, p0, Lcom/oneplus/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    if-nez v6, :cond_b

    .line 3199
    iput-boolean v11, p0, Lcom/oneplus/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    .line 3200
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v7, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3202
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->bindToInitialComponents()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3203
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3206
    :cond_b
    if-eqz v1, :cond_c

    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v7, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v6, v7, :cond_c

    if-eqz v0, :cond_c

    .line 3208
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Start preview"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 3093
    :cond_c
    return-void

    .line 3147
    .end local v1    # "isRunning":Z
    .end local v2    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :cond_d
    const-string/jumbo v6, "CameraLensFacing"

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3155
    .restart local v2    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :cond_e
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    goto/16 :goto_2

    .line 3185
    :sswitch_0
    const/4 v1, 0x1

    .line 3186
    .restart local v1    # "isRunning":Z
    goto :goto_3

    .line 3194
    :cond_f
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailableCamerasChanged() - Fail to open camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3096
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3180
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onBatteryLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 3242
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3240
    return-void
.end method

.method protected onBindToCameraThread()V
    .locals 3

    .prologue
    .line 3220
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_0

    .line 3221
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 3224
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3225
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/CameraActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/CameraActivity$23;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 3217
    return-void
.end method

.method protected onBindingToCameraThreadEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 3252
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3253
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3254
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3255
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3256
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3257
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3258
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3259
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3260
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3261
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3262
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3250
    return-void
.end method

.method protected onBindingToCameraThreadProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 3273
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3274
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3275
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3276
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3277
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3278
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3279
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3280
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3271
    return-void
.end method

.method protected onCameraError(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

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

    .line 3317
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3318
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3312
    :cond_0
    return-void
.end method

.method protected onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 3326
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v0

    .line 3327
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraOpenFailed() - Error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3331
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method protected onCameraPreviewReceiverDestroyed(Z)V
    .locals 1
    .param p1, "syncPreviewStop"    # Z

    .prologue
    .line 3378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 3381
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 3375
    return-void
.end method

.method protected onCameraPreviewReceiverReady(Ljava/lang/Object;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 3392
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 3393
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-eqz v1, :cond_0

    .line 3395
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Stop preview first"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewReceiverDestroyed(Z)V

    .line 3400
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 3403
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 3405
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Continue starting preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3408
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Fail to start preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 3410
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3389
    :cond_1
    return-void
.end method

.method protected onCameraPreviewStartFailed()V
    .locals 2

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStartFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 3480
    return-void
.end method

.method protected onCameraPreviewStarted()V
    .locals 2

    .prologue
    .line 3422
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3424
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStarted() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    return-void

    .line 3428
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStarted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startAccelerometer()V

    .line 3434
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    .line 3437
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3438
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 3441
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_2

    .line 3442
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 3443
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_3

    .line 3444
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3447
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    sget-object v1, Lcom/oneplus/camera/LaunchSource;->POWER_KEY:Lcom/oneplus/camera/LaunchSource;

    if-ne v0, v1, :cond_4

    .line 3448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->scheduleQuickCapturePhoto(Z)V

    .line 3419
    :cond_4
    return-void
.end method

.method protected onCameraThreadEventReceived(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3565
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_2

    move-object v0, p2

    .line 3566
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V

    .line 3589
    :cond_0
    :goto_0
    instance-of v0, p2, Lcom/oneplus/base/RecyclableObject;

    if-eqz v0, :cond_1

    .line 3590
    check-cast p2, Lcom/oneplus/base/RecyclableObject;

    .end local p2    # "e":Lcom/oneplus/base/EventArgs;
    invoke-interface {p2}, Lcom/oneplus/base/RecyclableObject;->recycle()V

    .line 3563
    :cond_1
    return-void

    .line 3567
    .restart local p2    # "e":Lcom/oneplus/base/EventArgs;
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 3568
    check-cast v0, Lcom/oneplus/camera/CameraEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCameraError(Lcom/oneplus/camera/Camera;)V

    goto :goto_0

    .line 3569
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_4

    move-object v0, p2

    .line 3570
    check-cast v0, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    goto :goto_0

    .line 3571
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_5

    move-object v0, p2

    .line 3572
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onDefaultPhotoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3573
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 3574
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onDefaultVideoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3575
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_7

    move-object v0, p2

    .line 3576
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaFileSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3577
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_8

    move-object v0, p2

    .line 3578
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3579
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_9

    move-object v0, p2

    .line 3580
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3581
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    .line 3582
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3583
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_b

    move-object v0, p2

    .line 3584
    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    goto :goto_0

    .line 3585
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_c

    move-object v0, p2

    .line 3586
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3587
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 3588
    check-cast v0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onUnprocessedPictureReceived(Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V

    goto/16 :goto_0
.end method

.method protected onCameraThreadPropertyChanged(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3602
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3603
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onAvailableCamerasChanged(Ljava/util/List;)V

    .line 3628
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle()V

    .line 3600
    return-void

    .line 3604
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 3606
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3607
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewReceived()V

    goto :goto_0

    .line 3610
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3611
    const-string/jumbo v0, "CameraPreviewFrameWaiting"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    .line 3612
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3613
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3616
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 3617
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3618
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 3619
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3620
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 3621
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;Lcom/oneplus/camera/PhotoCaptureState;)V

    goto :goto_0

    .line 3622
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 3623
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3624
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 3625
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3626
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 3627
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/VideoCaptureState;Lcom/oneplus/camera/VideoCaptureState;)V

    goto/16 :goto_0
.end method

.method protected onCameraThreadStarted()V
    .locals 6

    .prologue
    .line 3638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    .local v0, "eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3640
    .local v3, "propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/MediaType;

    .line 3641
    .local v2, "initialMediaType":Lcom/oneplus/camera/media/MediaType;
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onBindingToCameraThreadEvents(Ljava/util/List;)V

    .line 3642
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->onBindingToCameraThreadProperties(Ljava/util/List;)V

    .line 3643
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 3644
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 3646
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCameraThreadStarted() - No camera thread handler"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3648
    return-void

    .line 3650
    :cond_0
    new-instance v4, Lcom/oneplus/camera/CameraActivity$24;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/oneplus/camera/CameraActivity$24;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3659
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCameraThreadStarted() - Fail to start binding to camera thread"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3661
    return-void

    .line 3635
    :cond_1
    return-void
.end method

.method protected onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 3817
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 3826
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    .line 3827
    .local v0, "activityState":Lcom/oneplus/base/BaseActivity$State;
    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v4, :cond_1

    .line 3828
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 3831
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3834
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 3837
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, -0x5a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3838
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 3839
    .local v2, "rotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 3840
    .local v1, "displayRotation":I
    packed-switch v1, :pswitch_data_0

    .line 3855
    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    .line 3858
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onConfigurationChanged() - Orientation changed to "

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3859
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_3

    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 3861
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onConfigurationChanged() - Try starting preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 3823
    :cond_2
    return-void

    .line 3843
    :pswitch_0
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 3846
    :pswitch_1
    sget-object v2, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 3849
    :pswitch_2
    sget-object v2, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 3852
    :pswitch_3
    sget-object v2, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 3859
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 3840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3872
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onContentViewSet(Landroid/view/View;)V

    .line 3875
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-nez v0, :cond_0

    .line 3877
    if-eqz p1, :cond_1

    .line 3879
    new-instance v0, Lcom/oneplus/camera/CameraActivity$26;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$26;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 3907
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 3869
    return-void

    .line 3903
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3992
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 3995
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    .line 3996
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreate() - Instance ID : "

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3999
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4002
    if-eqz p1, :cond_0

    .line 4004
    const-string/jumbo v3, "CameraActivity.IsQuickCaptureTriggered"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    .line 4008
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 4011
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkStartMode()V

    .line 4014
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->setupWindowFlags()V

    .line 4017
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4018
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4019
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4020
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4021
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4022
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4023
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4024
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4025
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4026
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4027
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4028
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4029
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4030
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4031
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4032
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4033
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 4036
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4037
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultSelfTimerInterval()V

    .line 4040
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$29;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$29;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4048
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$30;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$30;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4058
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getRequestedOrientation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 4061
    new-instance v2, Lcom/oneplus/base/Settings;

    invoke-direct {v2, p0, v8, v7}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4062
    .local v2, "settings":Lcom/oneplus/base/Settings;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/camera/CameraActivity$SettingsHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4063
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4066
    new-instance v3, Lcom/oneplus/camera/CameraThread;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$31;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$31;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 4074
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 4066
    invoke-direct {v3, p0, v4, v5}, Lcom/oneplus/camera/CameraThread;-><init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    .line 4077
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 4080
    const-string/jumbo v3, "CameraPreviewStartStop"

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 4083
    new-instance v3, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v3}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 4084
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 4085
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/camera/CameraActivity$32;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/CameraActivity$32;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4093
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/camera/CameraActivity$33;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/CameraActivity$33;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4101
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4103
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 4104
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4105
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4106
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 4110
    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 4113
    const-string/jumbo v3, "Location.Save"

    invoke-virtual {v2, v3, v6}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4114
    .local v1, "isLocationSettingEnabled":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecureMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3989
    :cond_3
    :goto_0
    return-void

    .line 4116
    :cond_4
    const-string/jumbo v3, "Location.Save"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4118
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_OptionalPermissions:Ljava/util/List;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4119
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const-class v4, Lcom/oneplus/base/PermissionManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/PermissionManager;

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    .line 4120
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v3, :cond_5

    .line 4122
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4123
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0

    .line 4126
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreate() - No permission manager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 4168
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_DisableDebugModeWhenExiting:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4170
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy() - Disable debug mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    .line 4175
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4178
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->unregisterReceivers()V

    .line 4181
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_1

    .line 4183
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->release()V

    .line 4186
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4195
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 4198
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 4200
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v1, :cond_2

    .line 4201
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v2, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4204
    :cond_2
    invoke-super {p0}, Lcom/oneplus/camera/BaseCameraActivity;->onDestroy()V

    .line 4207
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 4210
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v1, :cond_3

    .line 4212
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v2, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4213
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v2, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4165
    :cond_3
    return-void

    .line 4189
    :catch_0
    move-exception v0

    .line 4190
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy() - Fail to join camera thread"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDeviceOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 4224
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4226
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceOrientationChanged() - Unknown orientation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    return-void

    .line 4229
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4222
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 4292
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    .line 4295
    const/4 v0, 0x1

    .line 4296
    .local v0, "allGranted":Z
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4299
    aget-object v2, p1, v1

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4296
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4302
    :cond_1
    aget v2, p2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4304
    const/4 v0, 0x0

    .line 4310
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4311
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_3

    .line 4312
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 4315
    :cond_3
    if-nez v0, :cond_4

    .line 4317
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialPermissionsRequestCompleted() - Some permissions are not granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4318
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 4319
    return v4

    .line 4322
    :cond_4
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 4332
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4335
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 4338
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4340
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    .line 4341
    .local v0, "handler":Lcom/oneplus/camera/KeyEventHandler;
    new-instance v3, Lcom/oneplus/camera/ui/KeyEventArgs;

    invoke-direct {v3, p2}, Lcom/oneplus/camera/ui/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {v0, p1, v3}, Lcom/oneplus/camera/KeyEventHandler;->onKeyDown(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v2

    .line 4342
    .local v2, "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4338
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4345
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, " is handled by "

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4346
    const/4 v3, 0x1

    return v3

    .line 4348
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Pass to system directly: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4349
    return v5

    .line 4354
    .end local v0    # "handler":Lcom/oneplus/camera/KeyEventHandler;
    .end local v2    # "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4356
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Capture UI is disabled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4357
    return v5

    .line 4361
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 4342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4371
    new-instance v2, Lcom/oneplus/camera/ui/KeyEventArgs;

    invoke-direct {v2, p2}, Lcom/oneplus/camera/ui/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 4372
    .local v2, "keyEventArgs":Lcom/oneplus/camera/ui/KeyEventArgs;
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/KeyEventArgs;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4379
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4381
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v4, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    .line 4382
    .local v0, "handler":Lcom/oneplus/camera/KeyEventHandler;
    invoke-interface {v0, p1, v2}, Lcom/oneplus/camera/KeyEventHandler;->onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v3

    .line 4383
    .local v3, "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4379
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4374
    .end local v0    # "handler":Lcom/oneplus/camera/KeyEventHandler;
    .end local v1    # "i":I
    .end local v3    # "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onKeyUp() - Not a pair of key down and key up event, keyCode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    return v7

    .line 4386
    .restart local v0    # "handler":Lcom/oneplus/camera/KeyEventHandler;
    .restart local v1    # "i":I
    .restart local v3    # "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onKeyUp() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " is handled by "

    invoke-static {v4, v5, v6, v7, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4387
    return v8

    .line 4389
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onKeyUp() - Pass to system directly: "

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4390
    return v7

    .line 4395
    .end local v0    # "handler":Lcom/oneplus/camera/KeyEventHandler;
    .end local v3    # "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    :cond_2
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4397
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onKeyUp() - Capture UI is disabled"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    return v7

    .line 4402
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 4405
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v5

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v4}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    .line 4418
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onKeyUp() - Back pressed, leave camera"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4420
    iget-boolean v4, p0, Lcom/oneplus/camera/CameraActivity;->m_DisableDebugModeWhenExiting:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4419
    if-nez v4, :cond_6

    .line 4421
    :cond_4
    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4425
    :goto_1
    return v8

    .line 4409
    :pswitch_3
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4411
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onKeyUp() - Back pressed, stop video capture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4412
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v4, v7, v7}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 4414
    :cond_5
    return v8

    .line 4423
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 4429
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 4383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4405
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 4465
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 4468
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4471
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 4474
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4475
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4476
    sget-object v2, Lcom/oneplus/camera/LaunchSource;->NORMAL:Lcom/oneplus/camera/LaunchSource;

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    .line 4479
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecureMode()Z

    move-result v1

    .line 4480
    .local v1, "isSecureMode":Z
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkStartMode()V

    .line 4481
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4489
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->setupWindowFlags()V

    .line 4492
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkLatestLeavingTime()V

    .line 4495
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4496
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultSelfTimerInterval()V

    .line 4499
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->isStartedInSelfieMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4501
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onNewIntent() - Switch to front camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4502
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    const/16 v3, 0x24

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4504
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4506
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onNewIntent() - Camera is locked"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4509
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v2, v3, v5}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 4510
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_4

    .line 4511
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iput-object v0, v2, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .line 4524
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    .line 4462
    return-void

    .line 4483
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onNewIntent() - Instance becomes non-secure mode from secure mode, finish itself"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 4485
    return-void

    .line 4513
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onNewIntent() - No front camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4517
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "CameraLensFacing"

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4520
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    sget-object v3, Lcom/oneplus/camera/LaunchSource;->NORMAL:Lcom/oneplus/camera/LaunchSource;

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4521
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultCamera()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 4533
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->cancelQuickCaptures()V

    .line 4536
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4538
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Stop photo capture"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4541
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 4542
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 4544
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 4548
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4550
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Stop video capture"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4551
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v7, v10, v10}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 4555
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/oneplus/camera/CameraActivity$34;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraActivity$34;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4566
    invoke-super {p0}, Lcom/oneplus/camera/BaseCameraActivity;->onPause()V

    .line 4569
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    .line 4572
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 4573
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 4576
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopAccelerometer()V

    .line 4579
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopOrientationListener()V

    .line 4582
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4584
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    new-array v4, v7, [Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    .line 4585
    .local v4, "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4586
    array-length v7, v4

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 4588
    aget-object v3, v4, v5

    .line 4589
    .local v3, "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget v7, v3, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 4591
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPause() - Remove capture UI disable handle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4592
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4586
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4595
    .end local v3    # "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPause() - Capture UI disable handle count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4597
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4606
    .end local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    :cond_5
    iget-boolean v7, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-eqz v7, :cond_6

    .line 4608
    iput-boolean v10, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4609
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4613
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_7

    .line 4615
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4616
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4620
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4622
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4623
    .local v0, "contentView":Landroid/view/View;
    instance-of v7, v0, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_f

    .line 4625
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-nez v7, :cond_8

    .line 4627
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    .line 4628
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4629
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4631
    :cond_8
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Take screen-shot [start]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    .line 4635
    .local v6, "isDrawingCacheEnabled":Z
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4636
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4637
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c

    .line 4638
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4644
    :goto_1
    if-nez v6, :cond_9

    .line 4645
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4652
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Take screen-shot [end]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_e

    .line 4655
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4656
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_d

    .line 4658
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "contentView":Landroid/view/View;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4664
    :goto_3
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    .line 4665
    const/16 v7, -0x64

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4666
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenShotRotation()V

    .line 4676
    :cond_a
    :goto_4
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviousRotation:Lcom/oneplus/base/Rotation;

    .line 4679
    const/16 v7, -0x6e

    const-wide/16 v8, 0x0

    invoke-static {p0, v7, v12, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 4682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sput-wide v8, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    .line 4530
    return-void

    .line 4600
    .restart local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .restart local v5    # "i":I
    :cond_b
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_5
    if-ltz v5, :cond_5

    .line 4601
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPause() - Active capture UI disable handle : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4600
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 4641
    .end local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    .restart local v0    # "contentView":Landroid/view/View;
    .restart local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .restart local v6    # "isDrawingCacheEnabled":Z
    :cond_c
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4642
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - No drawing cache"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4648
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :catch_0
    move-exception v2

    .line 4649
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Fail to take screen-shot"

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4650
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 4662
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_d
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - m_ScreenShotImageView has been added before."

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4669
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    goto :goto_4

    .line 4672
    :cond_f
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Cannot show screen-shot because content view is not RelativeLayout"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4708
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoCaptureFailed() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    return-void

    .line 4712
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoCaptureFailed() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 4727
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhotoCaptureFailed() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    return-void

    .line 4718
    :sswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 4719
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 4720
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4703
    :goto_0
    return-void

    .line 4723
    :sswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4724
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    goto :goto_0

    .line 4715
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v5, -0x6e

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 4855
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4857
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onResume() - Cancel closing cameras"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4858
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4862
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 4865
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 4866
    .local v2, "pm":Landroid/os/PowerManager;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4869
    invoke-super {p0}, Lcom/oneplus/camera/BaseCameraActivity;->onResume()V

    .line 4872
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_0
    if-ne v4, v3, :cond_1

    .line 4873
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 4876
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4877
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 4880
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 4881
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    const/16 v6, -0x50

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4884
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->registerReceivers()V

    .line 4885
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_2

    .line 4887
    new-instance v3, Lcom/oneplus/camera/CameraActivity$35;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$35;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4898
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4899
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4903
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4904
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v3, v4, :cond_7

    .line 4905
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v3, v4, :cond_7

    .line 4907
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 4931
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 4934
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4940
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 4943
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "IsDebugMode"

    invoke-virtual {v3, v4, v8}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4944
    .local v1, "isDebugMode":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    .line 4852
    return-void

    .line 4872
    .end local v1    # "isDebugMode":Z
    :cond_6
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 4909
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_3

    .line 4911
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onResume() - preview is already started"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4914
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startOrientationListener()V

    .line 4917
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/camera/CameraActivity$36;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$36;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 4923
    const-wide/16 v6, 0x64

    .line 4917
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4926
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_LaunchSource:Lcom/oneplus/camera/LaunchSource;

    sget-object v4, Lcom/oneplus/camera/LaunchSource;->POWER_KEY:Lcom/oneplus/camera/LaunchSource;

    if-ne v3, v4, :cond_3

    .line 4927
    invoke-direct {p0, v8}, Lcom/oneplus/camera/CameraActivity;->scheduleQuickCapturePhoto(Z)V

    goto :goto_1

    .line 4936
    :cond_9
    iput-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4937
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x0

    const/16 v2, -0x3c

    const/4 v3, 0x1

    .line 4958
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4974
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4976
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4977
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4978
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4959
    :cond_0
    return-void

    .line 4962
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4966
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->isSystemOrientationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4967
    sget-object p2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 4970
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4974
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4976
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4977
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4978
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4953
    :cond_3
    return-void

    .line 4973
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 4974
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4976
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4977
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4978
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4973
    :cond_4
    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 4988
    const-string/jumbo v0, "CameraActivity.IsQuickCaptureTriggered"

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsQuickCaptureTriggered:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4989
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4986
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 5014
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 5017
    invoke-super {p0}, Lcom/oneplus/camera/BaseCameraActivity;->onStart()V

    .line 5020
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5021
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 5024
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-eqz v0, :cond_1

    .line 5025
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 5011
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 5037
    invoke-super {p0}, Lcom/oneplus/camera/BaseCameraActivity;->onStop()V

    .line 5031
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5055
    invoke-static {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->obtain(Landroid/view/MotionEvent;)Lcom/oneplus/camera/ui/MotionEventArgs;

    move-result-object v0

    .line 5056
    .local v0, "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 5057
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5059
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->recycle()V

    .line 5060
    const/4 v1, 0x1

    return v1

    .line 5062
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->recycle()V

    .line 5065
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 5079
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5081
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureFailed() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5082
    return-void

    .line 5085
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureFailed() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5088
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5104
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoCaptureFailed() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    return-void

    .line 5093
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 5094
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 5095
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 5096
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5076
    :goto_0
    return-void

    .line 5099
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 5100
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 5101
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 5088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseAudioPlaybackForVideoRecording()V
    .locals 4

    .prologue
    .line 7552
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 7553
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 7550
    return-void
.end method

.method public pauseVideoCapture()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5248
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5249
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5257
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pauseVideoCapture() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    return v4

    .line 5255
    :pswitch_0
    return v3

    .line 5260
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_0

    .line 5262
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoCapture() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    return v4

    .line 5267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 5268
    .local v0, "captureHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$37;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/CameraActivity$37;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5279
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoCapture() - Fail to pause in camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5280
    return v4

    .line 5284
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5285
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_2

    .line 5287
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoCapture() - Interrupted by other operations"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    return v4

    .line 5292
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5293
    const-string/jumbo v1, "PauseVideoCapture"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5296
    :cond_3
    return v3

    .line 5249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 5424
    return-void
.end method

.method public requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 5464
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5465
    new-instance v0, Lcom/oneplus/camera/CameraActivity$39;

    const-string/jumbo v1, "PreCaptureFocusLockRequest"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$39;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 5473
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5474
    return-object v0
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 7546
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 7547
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 7545
    return-void
.end method

.method public resumeVideoCapture()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5658
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5659
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5667
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeVideoCapture() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5668
    return v4

    .line 5665
    :pswitch_1
    return v3

    .line 5670
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_0

    .line 5672
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoCapture() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    return v4

    .line 5677
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 5678
    .local v0, "captureHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$40;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/CameraActivity$40;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5689
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoCapture() - Fail to resume in camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5690
    return v4

    .line 5694
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5695
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_2

    .line 5697
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoCapture() - Interrupted by other operations"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5698
    return v4

    .line 5702
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5703
    const-string/jumbo v1, "ResumeVideoCapture"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5706
    :cond_3
    return v3

    .line 5659
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

.method protected selectCameraPreviewSize()V
    .locals 1

    .prologue
    .line 5738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize(Z)V

    .line 5736
    return-void
.end method

.method protected selectCameraPreviewSize(Z)V
    .locals 7
    .param p1, "forceRestartPreview"    # Z

    .prologue
    .line 5749
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v2

    .line 5750
    .local v2, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-nez v2, :cond_0

    .line 5752
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - No ResolutionManager."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    return-void

    .line 5757
    :cond_0
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 5759
    .local v0, "prevPreviewSize":Landroid/util/Size;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v5

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v4}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 5768
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectCameraPreviewSize() - Unknown media type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5769
    return-void

    .line 5762
    :pswitch_0
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 5774
    .local v1, "previewSize":Landroid/util/Size;
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 5788
    const/4 v3, 0x0

    .line 5793
    .local v3, "restartPreview":Z
    :goto_1
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5796
    if-eqz v3, :cond_1

    .line 5798
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - Restart preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5799
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 5746
    :cond_1
    return-void

    .line 5765
    .end local v1    # "previewSize":Landroid/util/Size;
    .end local v3    # "restartPreview":Z
    :pswitch_1
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .restart local v1    # "previewSize":Landroid/util/Size;
    goto :goto_0

    .line 5778
    :pswitch_2
    if-nez p1, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5785
    const/4 v3, 0x0

    .restart local v3    # "restartPreview":Z
    goto :goto_1

    .line 5780
    .end local v3    # "restartPreview":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - Stop preview to change preview size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 5782
    const/4 v3, 0x1

    .line 5779
    .restart local v3    # "restartPreview":Z
    goto :goto_1

    .line 5759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5774
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
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
    .line 5808
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 5809
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setSelfTimerIntervalProp(J)Z

    move-result v0

    return v0

    .line 5810
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCaptureDelayTime(J)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "delayTimeMillis"    # J

    .prologue
    .line 5822
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5825
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;-><init>(Lcom/oneplus/camera/CameraActivity;J)V

    .line 5826
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureDelayTimeHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 5830
    return-object v0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 5838
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentView() - Load content view [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5839
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5840
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentView() - Load content view [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5841
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 5836
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5849
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5850
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->setContentView(Landroid/view/View;)V

    .line 5851
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5859
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5860
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5861
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5857
    return-void
.end method

.method public setDebugMode(Z)Z
    .locals 4
    .param p1, "debug"    # Z

    .prologue
    .line 6216
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6219
    if-nez p1, :cond_0

    .line 6221
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6222
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 6224
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 6235
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "IsDebugMode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6236
    const/4 v1, 0x1

    return v1

    .line 6228
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->switchCamera()Z

    goto :goto_0

    .line 6238
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 6224
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/oneplus/camera/KeyEventHandler;

    .prologue
    .line 5869
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5872
    const/4 v0, 0x0

    .line 5873
    .local v0, "candHandle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    .line 5875
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    iget-object v3, v1, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    if-ne v3, p1, :cond_0

    .line 5877
    move-object v0, v1

    .line 5881
    .end local v0    # "candHandle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    .end local v1    # "handle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    :cond_1
    if-eqz v0, :cond_2

    .line 5883
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5884
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5891
    :goto_0
    return-object v0

    .line 5888
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/KeyEventHandler;)V

    .line 5889
    .local v0, "candHandle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMediaResult(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "reviewScreenResult"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 5936
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5938
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5939
    return-void

    .line 5943
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5960
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaResult() - Unknow review screen result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5961
    return-void

    .line 5946
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5947
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5948
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 5933
    :goto_0
    return-void

    .line 5951
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - OK, Inline bitmap: "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5952
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5953
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 5956
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5957
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 5943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMediaResult(ILcom/oneplus/camera/MediaInfo;)V
    .locals 4
    .param p1, "reviewScreenResult"    # I
    .param p2, "mediaInfo"    # Lcom/oneplus/camera/MediaInfo;

    .prologue
    const/4 v3, -0x1

    .line 5899
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5901
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    return-void

    .line 5906
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5926
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaResult() - Unknow review screen result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5927
    return-void

    .line 5909
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5911
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 5896
    :goto_0
    return-void

    .line 5914
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - OK, Uri: "

    iget-object v2, p2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5915
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 5916
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5919
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 5918
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->setResult(I)V

    goto :goto_1

    .line 5922
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5923
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 5906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMediaType(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 5
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5992
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5993
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5994
    return v4

    .line 5995
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaType() - Media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5996
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6027
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaType() - Unknown media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6028
    return v3

    .line 6000
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 6006
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaType() - Current video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6007
    return v3

    .line 6014
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 6020
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaType() - Current photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6021
    return v3

    .line 6032
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6034
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6036
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Fail to change media type"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    return v3

    .line 6041
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Change media type before camera thread start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6042
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6045
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6046
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6051
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 6054
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerUsability()V

    .line 6055
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 6058
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 6061
    return v4

    .line 6048
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5996
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 6000
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 6014
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 5
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
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v0, 0x0

    .line 6105
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_0

    .line 6106
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change activity rotation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6107
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_4

    .line 6110
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraContext;

    move-object v0, v3

    .line 6111
    .local v0, "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    :cond_1
    if-nez v0, :cond_3

    .line 6113
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    .end local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Z)V

    .line 6114
    .restart local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 6115
    const/4 v2, 0x0

    .line 6119
    :goto_0
    check-cast p2, Lcom/oneplus/camera/Camera;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    iput-object p2, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .line 6120
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-super {p0, v3, v4}, Lcom/oneplus/camera/BaseCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 6121
    .local v1, "isSuccess":Z
    if-eqz v1, :cond_2

    .line 6122
    iget-object v3, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 6123
    :cond_2
    return v1

    .line 6118
    .end local v1    # "isSuccess":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    iget-object v2, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .local v2, "prevCamera":Lcom/oneplus/camera/Camera;
    goto :goto_0

    .line 6125
    .end local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    .end local v2    # "prevCamera":Lcom/oneplus/camera/Camera;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_5

    .line 6126
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change camera preview state."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6127
    :cond_5
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_6

    .line 6128
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change UI rotation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6129
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x0

    .line 6073
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6074
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 6082
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingTimeRatio() - Cannot restore recording time ratio when capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    return-object v4

    .line 6087
    :pswitch_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 6089
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

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

    .line 6090
    return-object v4

    .line 6094
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;-><init>(Lcom/oneplus/camera/CameraActivity;F)V

    .line 6095
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6096
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

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

    .line 6097
    return-object v0

    .line 6074
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

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 6137
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->setRequestedOrientation(I)V

    .line 6138
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 6135
    return-void
.end method

.method public setRotationDelayTime(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 6145
    const/16 v1, -0x5f

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 6147
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotationDelayTime() - delay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6148
    iput-wide p1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    .line 6150
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 6153
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 6154
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 6155
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 6142
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_0
    return-void
.end method

.method public final setSettings(Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    const/4 v3, 0x0

    .line 6192
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6195
    if-nez p1, :cond_0

    .line 6197
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSettings() - No settings."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    return-object v3

    .line 6202
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$SettingsHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    .line 6203
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6204
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettings() - Create handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6207
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 6208
    return-object v0
.end method

.method public showReviewScreen()Z
    .locals 2

    .prologue
    .line 6246
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 6248
    const-class v0, Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ReviewScreen;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    .line 6249
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 6251
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Cannot find ReviewScreen component"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6252
    const/4 v0, 0x0

    return v0

    .line 6257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/ReviewScreen;->showReviewScreen()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 6259
    const/4 v0, 0x1

    return v0
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 6269
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 6267
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-nez v0, :cond_0

    .line 6280
    const-class v0, Lcom/oneplus/camera/ui/ToastManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ToastManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    .line 6281
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-eqz v0, :cond_1

    .line 6282
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/camera/ui/ToastManager;->showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    .line 6277
    :goto_0
    return-void

    .line 6284
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    const/4 v5, 0x0

    .line 6344
    if-nez p1, :cond_0

    .line 6346
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - No intent"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6347
    return-object v5

    .line 6351
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6354
    const/16 v2, 0x40

    .line 6355
    .local v2, "requestCode":I
    :goto_0
    if-lez v2, :cond_1

    .line 6357
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6360
    :cond_1
    if-gtz v2, :cond_3

    .line 6362
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - No available request code"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6363
    return-object v5

    .line 6355
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6367
    :cond_3
    new-instance v1, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)V

    .line 6368
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6373
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6374
    return-object v1

    .line 6377
    :catch_0
    move-exception v0

    .line 6378
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - Fail to start activity"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6379
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 6380
    return-object v5
.end method

.method public final startCameraPreview()Z
    .locals 1

    .prologue
    .line 6391
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview()V
    .locals 3

    .prologue
    .line 6647
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6648
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    return-void

    .line 6650
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 6651
    .local v1, "hardwareLevel":Lcom/oneplus/camera/Camera$HardwareLevel;
    sget-object v2, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    if-ne v1, v2, :cond_1

    .line 6652
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 6645
    :goto_0
    return-void

    .line 6654
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0
.end method

.method public stopCameraPreview(Z)V
    .locals 7
    .param p1, "sync"    # Z

    .prologue
    .line 6661
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6662
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 6678
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6679
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 6681
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 6682
    return-void

    .line 6667
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Stop while starting"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6670
    :pswitch_2
    if-nez p1, :cond_0

    .line 6671
    return-void

    .line 6674
    :pswitch_3
    return-void

    .line 6686
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6687
    const-string/jumbo v4, "CameraPreviewStartStop"

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 6690
    :cond_2
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v4, v5, :cond_3

    .line 6691
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6692
    :cond_3
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v4, v5, :cond_4

    .line 6693
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6696
    :cond_4
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v4, v5, :cond_5

    .line 6698
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Process interrupted"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6699
    return-void

    .line 6703
    :cond_5
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    .line 6704
    .local v1, "flags":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v4, :cond_7

    .line 6706
    if-eqz p1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6707
    .local v2, "time":J
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 6709
    if-eqz p1, :cond_b

    .line 6710
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Fail to stop camera preview synchronously"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6714
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 6716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 6717
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopCameraPreview() - Take "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms to stop preview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6722
    .end local v2    # "time":J
    :cond_7
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_8

    .line 6723
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 6658
    :cond_8
    return-void

    .line 6703
    .end local v1    # "flags":I
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto :goto_1

    .line 6706
    :cond_a
    const-wide/16 v2, 0x0

    .restart local v2    # "time":J
    goto :goto_2

    .line 6712
    :cond_b
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Fail to stop camera preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6662
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public switchCamera()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6902
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6905
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6906
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 6908
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6909
    return v6

    .line 6913
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 6915
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchCamera() - Camera is locked to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6916
    return v6

    .line 6920
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6922
    .local v1, "cameraList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 6953
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6956
    .local v2, "newCamera":Lcom/oneplus/camera/Camera;
    :cond_2
    :goto_0
    if-nez v2, :cond_5

    .line 6958
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No camera to switch"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6959
    return v6

    .line 6926
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6928
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6929
    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 6931
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6932
    if-nez v2, :cond_2

    .line 6935
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :cond_3
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    goto :goto_0

    .line 6940
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6942
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6943
    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 6946
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    goto :goto_0

    .line 6950
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    goto :goto_0

    .line 6961
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchCamera() - Select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6964
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v3

    return v3

    .line 6922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public switchCamera(Lcom/oneplus/camera/Camera$LensFacing;)Z
    .locals 1
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 6975
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v0

    return v0
.end method

.method public switchCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Z
    .locals 1
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "flags"    # I

    .prologue
    .line 6987
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v0

    return v0
.end method

.method public takeScreenShot()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 7197
    new-instance v0, Lcom/oneplus/camera/CameraActivity$44;

    const-string/jumbo v1, "TakeScreenShot"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$44;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 7204
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7205
    return-object v0
.end method
