.class public abstract Lcom/oneplus/camera/CameraActivity;
.super Lcom/oneplus/base/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraActivity$1;,
        Lcom/oneplus/camera/CameraActivity$2;,
        Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;,
        Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;,
        Lcom/oneplus/camera/CameraActivity$CameraContext;,
        Lcom/oneplus/camera/CameraActivity$CameraLockHandle;,
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

.field private static final synthetic -com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

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

.field private static final DURATION_CLOSE_ALL_CAMERAS_DELAY:J = 0x12cL

.field private static final DURATION_DISABLE_TOUCH_FOR_NAV_BAR:J = 0x12cL

.field private static final DURATION_ENABLE_UI_FOR_PREVIEW_FRAME:J = 0x64L

.field public static final DURATION_IDLE:J = 0x1d4c0L

.field private static final DURATION_MAX_PENDING_CAPTURE:J = 0x320L

.field private static final DURATION_NAV_BAR_VISIBLE:J = 0x7d0L

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

.field private static final MSG_CEHCK_WINDOW_ROTATION:I = -0x64

.field private static final MSG_CLOSE_ALL_CAMERAS:I = -0x6e

.field private static final MSG_ENABLE_UI_FOR_PREVIEW_FRAME:I = -0x46

.field private static final MSG_FINISH_BY_SELF:I = -0x33

.field private static final MSG_IDLE:I = -0x32

.field private static final MSG_PHOTO_CAPTURE_FAILED:I = -0x14

.field private static final MSG_PHOTO_CAPTURE_STARTED:I = -0x15

.field private static final MSG_ROTATION_READY:I = -0x3c

.field private static final MSG_STABLE_CAPTURE_TIMEOUT:I = -0x82

.field private static final MSG_UPDATE_DELAYED_ROTATION:I = -0x5f

.field private static final MSG_UPDATE_ELAPSED_RECORDING_TIME:I = -0x28

.field private static final MSG_UPDATE_SCREENSHOT_ROTATION:I = -0x5a

.field private static final MSG_UPDATE_SYS_UI_VISIBILITY:I = -0x50

.field private static final MSG_VIDEO_CAPTURE_FAILED:I = -0x1e

.field private static final MSG_VIDEO_CAPTURE_STARTED:I = -0x1f

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

.field private static final SETTINGS_KEY_CAMERA_LENS_FACING:Ljava/lang/String; = "CameraLensFacing"

.field private static final SETTINGS_KEY_SELF_TIMER_INTERVAL_BACK:Ljava/lang/String; = "SelfTimer.Back"

.field private static final SETTINGS_KEY_SELF_TIMER_INTERVAL_FRONT:Ljava/lang/String; = "SelfTimer.Front"

.field private static final TIMEOUT_CHECK_ROTATION:J = 0xbb8L

.field private static final TIMEOUT_KEEP_CAPTURE_SETTINGS:J = 0x493e0L

.field private static final TIMEOUT_ROTATION_READY:J = 0xc8L

.field private static final USE_GYROSCOPE_FOR_DEVICE_STABILITY_CHECK:Z

.field private static m_LatestLeaveTimeMillis:J

.field private static final m_ScreenShots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


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

.field private m_LastNavBarVisibleTime:J

.field private volatile m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

.field private m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

.field private m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field private m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

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

.field private m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

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

.field private m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field private m_VideoRecordStartTime:J

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

.method static synthetic -get5(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/CameraActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/io/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
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

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
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

    const/16 v2, 0x26

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

    const/16 v2, 0x26

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

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

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

.method static synthetic -set3(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;)Lcom/oneplus/camera/Camera;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    return-object p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
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

.method static synthetic -wrap1(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z
    .locals 1
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/CameraActivity;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCountDownTimerChanged(J)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/CameraActivity;[F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onGyroscopeValuesChanged([F)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 0
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onSystemOrientationSettingsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->restoreSettings(Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startAccelerometer()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "initialMediaType"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "eventKeys"    # Ljava/util/List;
    .param p3, "propKeys"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->bindToCameraThread(Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->unlockCamera(Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$RotationLockHandle;)V
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

.method static synthetic -wrap8(Lcom/oneplus/camera/CameraActivity;[F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->onCountDownTimerCancelled()V

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

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 112
    new-instance v1, Lcom/oneplus/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v6

    .line 113
    new-instance v1, Lcom/oneplus/camera/FocusControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/FocusControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    .line 114
    new-instance v1, Lcom/oneplus/camera/media/ResolutionManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/media/ResolutionManagerBuilder;-><init>()V

    aput-object v1, v0, v9

    .line 115
    new-instance v1, Lcom/oneplus/camera/ui/ViewfinderBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ViewfinderBuilder;-><init>()V

    aput-object v1, v0, v5

    .line 111
    sput-object v0, Lcom/oneplus/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 160
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AccelerometerValues"

    const-class v2, [F

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    new-array v5, v5, [F

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActivityRotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AllRequiredPermissionsGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 173
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 177
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "BatteryLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Camera"

    const-class v2, Lcom/oneplus/camera/Camera;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 193
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DeviceOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 197
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DeviceStabilityLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ElapsedRecordingSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 205
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstPhotoCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 209
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstPhotoOnCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 213
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraLocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 217
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 221
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraSwitching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    .line 225
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraThreadStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 229
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureUIEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 233
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 237
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDebugMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    .line 241
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsFastShotToShotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 245
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsIdle"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    .line 249
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 253
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsReadyToCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 257
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsRotationReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    .line 261
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsScreenOn"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    .line 265
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSecureMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 269
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSelfTimerStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 273
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSelfTimerUsable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    .line 277
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsTouchingOnScreen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    .line 281
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 285
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWaitingForDeviceStable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_DEVICE_STABLE:Lcom/oneplus/base/PropertyKey;

    .line 289
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWaitingForStableToCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 293
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsLaunching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    .line 297
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "KeepLastCaptureSettings"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    .line 301
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 305
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MediaType"

    const-class v2, Lcom/oneplus/camera/media/MediaType;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 309
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureState"

    const-class v2, Lcom/oneplus/camera/PhotoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 313
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 317
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 321
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Rotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 325
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 329
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v6, "SelfTimerInterval"

    const-class v7, Ljava/lang/Long;

    const-class v8, Lcom/oneplus/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    .line 333
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Settings"

    const-class v2, Lcom/oneplus/base/Settings;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    .line 337
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 341
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureState"

    const-class v2, Lcom/oneplus/camera/VideoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 347
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "BurstPhotoReceived"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 351
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureCancelled"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 355
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 359
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureFailed"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    .line 363
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 367
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarting"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    .line 371
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 375
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 379
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 383
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 387
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PostviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 391
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 395
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Touch"

    const-class v2, Lcom/oneplus/camera/ui/MotionEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    .line 399
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "UnprocessedPhotoReceived"

    const-class v2, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    .line 437
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;

    .line 461
    const-wide/32 v0, -0x493e0

    sput-wide v0, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShots:Ljava/util/Map;

    .line 821
    const-string/jumbo v0, "CameraLensFacing"

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    const-string/jumbo v0, "SelfTimer.Back"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    const-string/jumbo v0, "SelfTimer.Front"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 824
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 834
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;-><init>()V

    .line 467
    new-array v0, v4, [[F

    new-array v1, v2, [F

    aput-object v1, v0, v3

    new-array v1, v2, [F

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    .line 469
    new-array v0, v4, [[F

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    .line 470
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 471
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 473
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    .line 474
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    .line 475
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    .line 480
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 485
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    .line 489
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    .line 500
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    .line 510
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    .line 515
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    .line 519
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 520
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    .line 521
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    .line 526
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 547
    new-instance v0, Lcom/oneplus/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$1;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    .line 559
    new-instance v0, Lcom/oneplus/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$2;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 837
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$CameraContext;

    invoke-direct {v1, v3}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 834
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

    .line 859
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindToCameraThread()"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 862
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraThread;->disableVideoSnapshot()Lcom/oneplus/base/Handle;

    .line 865
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 867
    new-instance v3, Lcom/oneplus/camera/CameraActivity$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$3;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 875
    .local v3, "handler":Lcom/oneplus/base/EventHandler;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 876
    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventKey;

    invoke-virtual {v8, v7, v3}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 875
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 880
    .end local v3    # "handler":Lcom/oneplus/base/EventHandler;
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 882
    new-instance v0, Lcom/oneplus/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$4;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 898
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_6

    .line 900
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/PropertyKey;

    .line 901
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

    .line 902
    .local v5, "params":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v7, v6, v0}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 903
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-eq v6, v7, :cond_3

    .line 904
    invoke-static {p0, v10, v9, v9, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 898
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 908
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 909
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 910
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindToCameraThread() - Empty camera list"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 913
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 914
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 915
    invoke-static {v2, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    .line 922
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

    .line 923
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

    .line 926
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 929
    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v9, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Rotation;

    invoke-virtual {v8, v9, v7}, Lcom/oneplus/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 932
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onBindToCameraThread()V

    .line 857
    return-void
.end method

.method private bindToInitialComponents()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No ResolutionManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return v2

    .line 946
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No Viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    return v2

    .line 959
    :cond_2
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 960
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No CaptureModeManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return v2

    .line 967
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private bindToNormalComponents()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 975
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/StorageManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 976
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Lcom/oneplus/camera/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$5;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 1009
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-nez v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/CountDownTimer;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CountDownTimer;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    .line 1015
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->PROP_REMAINING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$6;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1025
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->EVENT_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$7;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1033
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-nez v0, :cond_2

    .line 1040
    const-class v0, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 1041
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$8;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1069
    :cond_2
    const-class v0, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 1070
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$9;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1087
    :cond_3
    return v4
.end method

.method private capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z
    .locals 13
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromSelfTimer"    # Z
    .param p3, "fromStableWaiting"    # Z

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Handle : "

    const-string/jumbo v3, ", from self timer : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, ", from stable waiting : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1284
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Cannot take snapshot on camera switching state."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v0, 0x0

    return v0

    .line 1290
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1299
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_7

    .line 1303
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

    .line 1305
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

    .line 1344
    :cond_3
    :goto_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/Camera;

    .line 1345
    .local v7, "camera":Lcom/oneplus/camera/Camera;
    if-nez v7, :cond_a

    .line 1347
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const/4 v0, 0x0

    return v0

    .line 1292
    .end local v7    # "camera":Lcom/oneplus/camera/Camera;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Cannot take video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    .line 1294
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 1295
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 1300
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1310
    .local v10, "seconds":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    .line 1312
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_9

    .line 1314
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Start self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    const/4 v1, 0x1

    invoke-interface {v0, v10, v11, v1}, Lcom/oneplus/camera/CountDownTimer;->start(JI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 1316
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1318
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1319
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1320
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$10;

    invoke-direct {v1, p0, v10, v11}, Lcom/oneplus/camera/CameraActivity$10;-><init>(Lcom/oneplus/camera/CameraActivity;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1328
    const/4 v0, 0x1

    return v0

    .line 1330
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Fail to start self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1333
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - No CountDownTimer interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1338
    .end local v10    # "seconds":J
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1350
    .restart local v7    # "camera":Lcom/oneplus/camera/Camera;
    :cond_a
    if-nez p3, :cond_b

    .line 1351
    if-eqz p2, :cond_c

    .line 1367
    :cond_b
    const/16 v0, -0x82

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1373
    new-instance v8, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v0

    invoke-direct {v8, p1, v0}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    .line 1374
    .local v8, "e":Lcom/oneplus/camera/CaptureEventArgs;
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v8}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1377
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v9, 0x0

    .line 1379
    .local v9, "lockFocus":Z
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$11;

    invoke-direct {v1, p0, v9, p1}, Lcom/oneplus/camera/CameraActivity$11;-><init>(Lcom/oneplus/camera/CameraActivity;ZLcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1398
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 1400
    const/4 v0, 0x0

    return v0

    .line 1352
    .end local v8    # "e":Lcom/oneplus/camera/CaptureEventArgs;
    .end local v9    # "lockFocus":Z
    :cond_c
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_b

    .line 1353
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 1354
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1357
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1358
    .local v12, "stabilityLevel":I
    const/16 v0, 0x64

    if-ge v12, v0, :cond_b

    .line 1360
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1361
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1362
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capturePhoto() - Waiting for device stable to capture, stability level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const/16 v0, -0x82

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 1364
    const/4 v0, 0x1

    return v0

    .line 1378
    .end local v12    # "stabilityLevel":I
    .restart local v8    # "e":Lcom/oneplus/camera/CaptureEventArgs;
    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "lockFocus":Z
    goto :goto_2

    .line 1404
    :cond_e
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1407
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1410
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 1413
    const/4 v0, 0x1

    return v0

    .line 1305
    nop

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

    .line 1461
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1464
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Cannot take video on camera switching state."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    return v4

    .line 1470
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_1

    .line 1472
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    return v4

    .line 1475
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoParams;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraThread$VideoParams;-><init>(Lcom/oneplus/camera/media/Resolution;)V

    .line 1477
    .local v0, "params":Lcom/oneplus/camera/CameraThread$VideoParams;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    .line 1478
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    .line 1482
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1485
    const-string/jumbo v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1488
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1490
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->pauseAudioPlaybackForVideoRecording()V

    .line 1493
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/camera/CameraActivity$12;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraThread$VideoParams;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1511
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1513
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1514
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 1515
    return v4

    .line 1519
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1522
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 1525
    const/4 v1, 0x1

    return v1
.end method

.method private changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 1533
    .local v0, "oldState":Lcom/oneplus/camera/OperationState;
    if-eq v0, p1, :cond_0

    .line 1535
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 1536
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1537
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    return-object v1

    .line 1539
    :cond_0
    return-object v0
.end method

.method private checkLatestLeavingTime()V
    .locals 8

    .prologue
    .line 1547
    const/4 v2, 0x0

    .line 1548
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

    .line 1554
    const/4 v2, 0x1

    .line 1557
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

    .line 1563
    const/4 v2, 0x1

    .line 1568
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    sub-long v0, v4, v6

    .line 1569
    .local v0, "diffTime":J
    if-nez v2, :cond_0

    const-wide/32 v4, 0x493e0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1572
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLatestLeavingTime() - Clear last capture settings"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1544
    :goto_0
    return-void

    .line 1578
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLatestLeavingTime() - Keep last capture settings"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1548
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1557
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

    .line 1588
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

    .line 1616
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 1618
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1619
    return-void

    .line 1591
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1592
    return-void

    .line 1596
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1604
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1609
    return-void

    .line 1623
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1585
    return-void

    .line 1588
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
    .line 1630
    const/4 v0, 0x1

    .line 1631
    .local v0, "allGranted":Z
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1633
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1635
    const/4 v0, 0x0

    .line 1636
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

    .line 1631
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1639
    :cond_1
    if-eqz v0, :cond_2

    .line 1640
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkRequiredPermissions() - All required permissions are granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1642
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_3

    .line 1643
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 1628
    :cond_3
    return-void
.end method

.method private checkStartMode()V
    .locals 1

    .prologue
    .line 1650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->checkStartMode(Landroid/content/Intent;)V

    .line 1648
    return-void
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 9
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 1655
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1656
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_1

    .line 1658
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkStartMode() - Intent is null, use normal start mode"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    sget-object v4, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 1660
    return-void

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v3, p1

    .line 1655
    goto :goto_0

    .line 1664
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1665
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1666
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1669
    new-instance v4, Lcom/oneplus/camera/MediaResultInfo;

    invoke-direct {v4}, Lcom/oneplus/camera/MediaResultInfo;-><init>()V

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    .line 1670
    if-eqz v2, :cond_3

    .line 1672
    const-string/jumbo v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1673
    .local v1, "extraOutput":Ljava/lang/Object;
    instance-of v4, v1, Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 1674
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "extraOutput":Ljava/lang/Object;
    iput-object v1, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1675
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    .line 1678
    :cond_3
    sget-object v4, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 1707
    :goto_1
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v6, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1708
    const/16 v4, -0x33

    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1710
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkStartMode() - Start mode: "

    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    const-string/jumbo v7, ", Media extras: "

    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1652
    return-void

    .line 1680
    :cond_4
    const-string/jumbo v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1681
    const-string/jumbo v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1680
    if-eqz v4, :cond_8

    .line 1683
    :cond_5
    if-eqz v2, :cond_7

    .line 1685
    new-instance v4, Lcom/oneplus/camera/MediaResultInfo;

    invoke-direct {v4}, Lcom/oneplus/camera/MediaResultInfo;-><init>()V

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    .line 1686
    const-string/jumbo v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1687
    .restart local v1    # "extraOutput":Ljava/lang/Object;
    instance-of v4, v1, Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 1688
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "extraOutput":Ljava/lang/Object;
    iput-object v1, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1690
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    .line 1691
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v5, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraDurationLimit:J

    .line 1692
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_MediaResultInfo:Lcom/oneplus/camera/MediaResultInfo;

    const-string/jumbo v5, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/oneplus/camera/MediaResultInfo;->extraVideoQuality:I

    .line 1694
    :cond_7
    sget-object v4, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    goto :goto_1

    .line 1696
    :cond_8
    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1697
    const-string/jumbo v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1696
    if-eqz v4, :cond_a

    .line 1699
    :cond_9
    sget-object v4, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    goto/16 :goto_1

    .line 1701
    :cond_a
    const-string/jumbo v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1702
    sget-object v4, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    goto/16 :goto_1

    .line 1704
    :cond_b
    sget-object v4, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    goto/16 :goto_1

    .line 1707
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method private completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1753
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 1755
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completePhotoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    return-void

    .line 1760
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

    .line 1766
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

    .line 1767
    return-void

    .line 1771
    :sswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1772
    .local v0, "isCapturing":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1775
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1777
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1778
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1779
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1750
    :cond_1
    :goto_1
    return-void

    .line 1771
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isCapturing":Z
    goto :goto_0

    .line 1782
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1

    .line 1760
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
    .line 1790
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 1792
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    return-void

    .line 1797
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

    .line 1806
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

    .line 1807
    return-void

    .line 1811
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1812
    .local v0, "isCapturing":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1815
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1817
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1818
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1819
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1787
    :cond_1
    :goto_1
    return-void

    .line 1811
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isCapturing":Z
    goto :goto_0

    .line 1822
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1

    .line 1797
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
    .line 2036
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2037
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 2034
    return-void

    .line 2038
    :cond_0
    return-void
.end method

.method private enableCaptureUI(Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2047
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2048
    return-void

    .line 2049
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

    .line 2050
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2044
    :cond_1
    return-void
.end method

.method private enableFastShotToShot(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2059
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 2062
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2056
    :cond_0
    return-void

    .line 2060
    :cond_1
    return-void
.end method

.method private enableSelfTimer(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2070
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerUsability()V

    .line 2067
    return-void

    .line 2071
    :cond_0
    return-void
.end method

.method public static getScreenShots(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 2183
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShots:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private idle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2396
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "idle()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    .line 2400
    const/16 v0, -0x32

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2401
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2402
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2394
    :cond_0
    return-void
.end method

.method private isInteractive()Z
    .locals 2

    .prologue
    .line 2435
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2436
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    return v1
.end method

.method private notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$19;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/camera/CameraActivity$19;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2591
    return-void
.end method

.method private notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 2609
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2611
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2612
    :cond_0
    const/16 v1, -0x5a

    const/4 v5, 0x1

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 2616
    :cond_1
    iget-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2617
    if-ne p1, p2, :cond_2

    .line 2618
    return-void

    .line 2621
    :cond_2
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2622
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2606
    return-void
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 22
    .param p1, "values"    # [F

    .prologue
    .line 2630
    sget-object v18, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2631
    return-void

    .line 2634
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v19, v0

    aget-object v15, v18, v19

    .line 2635
    .local v15, "oldValues":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    move/from16 v19, v0

    aget-object v14, v18, v19

    .line 2637
    .local v14, "newValues":[F
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2640
    sget-object v18, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15, v14}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 2645
    const/16 v18, 0x0

    aget v18, v14, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2646
    .local v9, "diffX":F
    const/16 v18, 0x1

    aget v18, v14, v18

    const/16 v19, 0x1

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 2647
    .local v10, "diffY":F
    const/16 v18, 0x2

    aget v18, v14, v18

    const/16 v19, 0x2

    aget v19, v15, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2648
    .local v11, "diffZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    if-nez v18, :cond_1

    .line 2649
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

    .line 2650
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

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aput v10, v18, v19

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aput v11, v18, v19

    .line 2653
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

    .line 2654
    const/4 v6, 0x0

    .line 2655
    .local v6, "avgDiffX":F
    const/4 v7, 0x0

    .line 2656
    .local v7, "avgDiffY":F
    const/4 v8, 0x0

    .line 2657
    .local v8, "avgDiffZ":F
    const/16 v16, 0x0

    .line 2658
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

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    move-object/from16 v18, v0

    aget-object v12, v18, v13

    .line 2661
    .local v12, "diffs":[F
    if-eqz v12, :cond_2

    .line 2663
    add-int/lit8 v16, v16, 0x1

    .line 2664
    const/16 v18, 0x0

    aget v18, v12, v18

    add-float v6, v6, v18

    .line 2665
    const/16 v18, 0x1

    aget v18, v12, v18

    add-float v7, v7, v18

    .line 2666
    const/16 v18, 0x2

    aget v18, v12, v18

    add-float v8, v8, v18

    .line 2658
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 2669
    .end local v12    # "diffs":[F
    :cond_3
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v6, v18

    .line 2670
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v7, v18

    .line 2671
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v8, v18

    .line 2672
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

    .line 2687
    .local v4, "avgDiff":D
    const-wide v18, 0x3fd147ae20000000L    # 0.27000001072883606

    cmpg-double v18, v4, v18

    if-gtz v18, :cond_5

    .line 2688
    const/16 v17, 0x64

    .line 2693
    .local v17, "stabilityLevel":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraActivity;->updateStabilityLevel(I)V

    .line 2627
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

    .line 2689
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

    .line 2690
    const/16 v17, 0x0

    .restart local v17    # "stabilityLevel":I
    goto :goto_1

    .line 2692
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

    .line 2908
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 2910
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

    .line 2911
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

    .line 2912
    return-void

    .line 2916
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

    .line 2905
    return-void
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "prevCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2924
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 2921
    return-void
.end method

.method private onCameraPreviewReceived()V
    .locals 6

    .prologue
    .line 2959
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2960
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2966
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

    .line 2967
    return-void

    .line 2971
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2972
    return-void

    .line 2975
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2978
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x46

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2979
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_1

    .line 2980
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 2981
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    .line 2982
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 2985
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_3

    .line 2986
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 2987
    :cond_3
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_4

    .line 2988
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 2956
    :cond_4
    return-void

    .line 2960
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
    .line 3108
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3109
    return-void

    .line 3111
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 3113
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

    .line 3114
    return-void

    .line 3118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 3120
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

    .line 3121
    return-void

    .line 3125
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStartFailed()V

    .line 3105
    return-void
.end method

.method private onCameraPreviewStarted(Lcom/oneplus/camera/Camera;I)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "cameraPreviewSessionID"    # I

    .prologue
    .line 3072
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3073
    return-void

    .line 3075
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 3077
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

    .line 3078
    return-void

    .line 3082
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 3084
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

    .line 3085
    return-void

    .line 3089
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStarted()V

    .line 3069
    return-void
.end method

.method private onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 4
    .param p1, "oldeState"    # Lcom/oneplus/camera/PhotoCaptureState;
    .param p2, "newState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 3132
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq p2, v1, :cond_0

    .line 3134
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3135
    .local v0, "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3141
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

    .line 3142
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3130
    .end local v0    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    :cond_0
    :pswitch_0
    return-void

    .line 3135
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

    .line 3152
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p2, v0, :cond_1

    .line 3155
    const/16 v0, -0x28

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 3158
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3161
    :cond_1
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq p2, v0, :cond_2

    .line 3163
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 3164
    :cond_2
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne p2, v0, :cond_0

    .line 3166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordStartTime:J

    .line 3168
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

    .line 3284
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

    .line 3287
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 3288
    .local v0, "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iput-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 3291
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 3294
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3305
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3307
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/CameraActivity$22;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$22;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 3321
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

    .line 3422
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 3282
    return-void

    .line 3297
    .restart local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3300
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3317
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_0

    .line 3318
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    goto :goto_1

    .line 3326
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3329
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

    .line 3331
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3334
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_2

    .line 3335
    const/4 v0, 0x0

    .line 3338
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

    .line 3340
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Clear pending handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    const/4 v0, 0x0

    .line 3345
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3348
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 3350
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Capture next photo immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-direct {p0, v0, v6, v6}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3352
    return-void

    .line 3357
    .restart local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3368
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_5
    :goto_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_6

    .line 3369
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v2, v3, :cond_6

    .line 3370
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v2, :cond_6

    .line 3372
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Continue stopping video recording"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v6}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3377
    :cond_6
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3363
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

    .line 3364
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 3385
    :pswitch_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3386
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 3388
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->resumeAudioPlayback()V

    .line 3391
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3392
    .local v1, "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    if-ne v1, v2, :cond_8

    .line 3393
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    check-cast v1, Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3396
    .restart local v1    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3399
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

    .line 3401
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3404
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    goto/16 :goto_2

    .line 3408
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3414
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

    .line 3415
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3321
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onCountDownTimerCancelled()V
    .locals 3

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3509
    return-void

    .line 3512
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3513
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3514
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$24;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$24;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 3525
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 3526
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3505
    :goto_0
    return-void

    .line 3528
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

    .line 3536
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3537
    return-void

    .line 3539
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - Remaining seconds : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3542
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_4

    .line 3544
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 3546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3547
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3548
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3550
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - Capture photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    .line 3533
    :cond_1
    :goto_0
    return-void

    .line 3555
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCountDownTimerChanged() - No capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 3559
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 3561
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/CameraActivity$25;-><init>(Lcom/oneplus/camera/CameraActivity;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3573
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

    .line 3574
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3575
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

    .line 3708
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3710
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

    .line 3711
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

    .line 3712
    return-void

    .line 3716
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 3705
    return-void
.end method

.method private onDefaultVideoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 3724
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3726
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

    .line 3727
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

    .line 3728
    return-void

    .line 3732
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 3721
    return-void
.end method

.method private onGyroscopeValuesChanged([F)V
    .locals 14
    .param p1, "values"    # [F

    .prologue
    .line 3796
    const/4 v11, 0x0

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 3797
    .local v3, "diffX":F
    const/4 v11, 0x1

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 3798
    .local v4, "diffY":F
    const/4 v11, 0x2

    aget v11, p1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 3799
    .local v5, "diffZ":F
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    if-nez v11, :cond_0

    .line 3800
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    const/4 v13, 0x3

    new-array v13, v13, [F

    aput-object v13, v11, v12

    .line 3801
    :cond_0
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput v3, v11, v12

    .line 3802
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aput v4, v11, v12

    .line 3803
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    iget v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aput v5, v11, v12

    .line 3804
    iget v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    array-length v12, v12

    rem-int/2addr v11, v12

    iput v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSampleIndex:I

    .line 3805
    const/4 v0, 0x0

    .line 3806
    .local v0, "avgDiffX":F
    const/4 v1, 0x0

    .line 3807
    .local v1, "avgDiffY":F
    const/4 v2, 0x0

    .line 3808
    .local v2, "avgDiffZ":F
    const/4 v9, 0x0

    .line 3809
    .local v9, "sampleCount":I
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    array-length v11, v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_2

    .line 3811
    iget-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_AccelValueSamples:[[F

    aget-object v6, v11, v7

    .line 3812
    .local v6, "diffs":[F
    if-eqz v6, :cond_1

    .line 3814
    add-int/lit8 v9, v9, 0x1

    .line 3815
    const/4 v11, 0x0

    aget v11, v6, v11

    add-float/2addr v0, v11

    .line 3816
    const/4 v11, 0x1

    aget v11, v6, v11

    add-float/2addr v1, v11

    .line 3817
    const/4 v11, 0x2

    aget v11, v6, v11

    add-float/2addr v2, v11

    .line 3809
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 3820
    .end local v6    # "diffs":[F
    :cond_2
    int-to-float v11, v9

    div-float/2addr v0, v11

    .line 3821
    int-to-float v11, v9

    div-float/2addr v1, v11

    .line 3822
    int-to-float v11, v9

    div-float/2addr v2, v11

    .line 3824
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 3837
    .local v8, "maxAvgDiff":F
    const v11, 0x3ca3d70a    # 0.02f

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_3

    .line 3838
    const/16 v10, 0x64

    .line 3843
    .local v10, "stabilityLevel":I
    :goto_1
    invoke-direct {p0, v10}, Lcom/oneplus/camera/CameraActivity;->updateStabilityLevel(I)V

    .line 3794
    return-void

    .line 3839
    .end local v10    # "stabilityLevel":I
    :cond_3
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_4

    .line 3840
    const/4 v10, 0x0

    .restart local v10    # "stabilityLevel":I
    goto :goto_1

    .line 3842
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
    .line 3987
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3984
    return-void
.end method

.method private onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 3994
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3991
    return-void
.end method

.method private onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4001
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3998
    return-void
.end method

.method private onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4008
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4005
    return-void
.end method

.method private onPhotoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v2, 0x1

    .line 4217
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4219
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

    .line 4220
    return-void

    .line 4223
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPhotoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4226
    iget v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v0, v2, :cond_1

    .line 4227
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4231
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

    .line 4243
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

    .line 4244
    return-void

    .line 4234
    :sswitch_0
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4235
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4214
    :goto_0
    return-void

    .line 4238
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPhotoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4240
    invoke-static {p2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4231
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 9
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4255
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Invalid photo capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4256
    return-void

    .line 4258
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4260
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Invalid internal capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    return-void

    .line 4265
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

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

    .line 4268
    .local v8, "newEvnetArgs":Lcom/oneplus/camera/CameraCaptureEventArgs;
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v8}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4250
    return-void
.end method

.method private onRequestedOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 4275
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 4277
    .local v1, "oldRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getRequestedOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4293
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

    .line 4294
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 4298
    .local v0, "newRotation":Lcom/oneplus/base/Rotation;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 4300
    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 4301
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, v0}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4273
    :cond_0
    return-void

    .line 4280
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_0
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4283
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_1
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4286
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_2
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4289
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_3
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 4277
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

    .line 4436
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget-object v1, v1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4438
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

    .line 4439
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

    .line 4440
    return-void

    .line 4444
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

    .line 4433
    return-void
.end method

.method private onSystemOrientationSettingsChanged(Z)V
    .locals 2
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 4486
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 4487
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 4488
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4484
    :cond_0
    return-void
.end method

.method private onUnprocessedPictureReceived(Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    .prologue
    .line 4514
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4511
    return-void
.end method

.method private onVideoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 4555
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4557
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

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4558
    return-void

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4564
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

    .line 4581
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

    .line 4582
    return-void

    .line 4567
    :pswitch_0
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4568
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4569
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4570
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 4571
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4572
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 4552
    :cond_1
    :goto_0
    return-void

    .line 4575
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4576
    iput-object p2, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 4577
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 4578
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4564
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 4591
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 4593
    new-instance v1, Lcom/oneplus/camera/CameraActivity$34;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$34;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 4654
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4655
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4656
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4657
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4658
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 4659
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4588
    return-void
.end method

.method private releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 4666
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 4667
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4664
    return-void
.end method

.method private removeScreenShot()V
    .locals 1

    .prologue
    .line 4681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    .line 4679
    return-void
.end method

.method private removeScreenShot(Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v2, 0x0

    .line 4687
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4685
    :cond_0
    :goto_0
    return-void

    .line 4689
    :cond_1
    if-eqz p1, :cond_2

    .line 4691
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4695
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeScreenShot()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4697
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShots:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4692
    :cond_3
    return-void
.end method

.method private resetIdleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x32

    .line 4726
    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 4727
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4728
    .local v0, "isRunning":Z
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    if-eqz v1, :cond_1

    .line 4730
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetIdleState()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    .line 4736
    if-eqz v0, :cond_0

    .line 4737
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4740
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4742
    :cond_1
    if-nez v0, :cond_2

    .line 4743
    return-void

    .line 4744
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

    .line 4751
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

    .line 4761
    :pswitch_1
    const-wide/32 v2, 0x1d4c0

    invoke-static {p0, v4, v5, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 4724
    return-void

    .line 4749
    :pswitch_2
    return-void

    .line 4759
    :pswitch_3
    return-void

    .line 4744
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4751
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

    .line 4768
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

    .line 4766
    :cond_0
    :goto_0
    return-void

    .line 4771
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_1

    .line 4772
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4771
    if-eqz v1, :cond_1

    .line 4775
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4778
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 4779
    .local v0, "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 4780
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 4782
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetPhotoCaptureState() - Capture next photo immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    invoke-direct {p0, v0, v6, v6}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4784
    return-void

    .line 4788
    .end local v0    # "pendingHandle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4791
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

    .line 4798
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4795
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4791
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private resetVideoCaptureState()V
    .locals 2

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 4810
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 4811
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4809
    if-eqz v0, :cond_0

    .line 4813
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4807
    :goto_0
    return-void

    .line 4816
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
    .line 4824
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 4825
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

    .line 4833
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

    .line 4837
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4838
    return-void

    .line 4839
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

    .line 4821
    return-void

    .line 4825
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
    .line 4847
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 4850
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4851
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 4853
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreSettings() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4854
    return-void

    .line 4857
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

    .line 4860
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4861
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4863
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4865
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    .line 4866
    .local v1, "prevHandle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v3, v1, Lcom/oneplus/camera/CameraActivity$SettingsHandle;->settings:Lcom/oneplus/base/Settings;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4844
    .end local v1    # "prevHandle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    :cond_1
    :goto_0
    return-void

    .line 4870
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreSettings() - All settings are removed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4871
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreToDefaultCamera()V
    .locals 6

    .prologue
    .line 4880
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 4881
    .local v2, "mainCamera":Lcom/oneplus/camera/Camera;
    if-eqz v2, :cond_2

    .line 4883
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cameraContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    .line 4885
    .local v0, "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    iget-boolean v3, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->isLocked:Z

    if-nez v3, :cond_0

    .line 4886
    iput-object v2, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    goto :goto_0

    .line 4888
    .end local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4892
    .end local v1    # "cameraContext$iterator":Ljava/util/Iterator;
    :goto_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "CameraLensFacing"

    sget-object v5, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4878
    return-void

    .line 4891
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "restoreToDefaultCamera() - Cannot find main camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private restoreToDefaultSelfTimerInterval()V
    .locals 2

    .prologue
    .line 4899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    .line 4900
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_0

    .line 4901
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 4897
    :cond_0
    return-void
.end method

.method private setSelfTimerIntervalProp(J)Z
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 5315
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 5316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Self timer interval cannot be negative."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5319
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 5320
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 5322
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSelfTimerIntervalProp() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5323
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5324
    const/4 v2, 0x0

    return v2

    .line 5328
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_2

    const-string/jumbo v1, "SelfTimer.Back"

    .line 5329
    .local v1, "key":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5332
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 5328
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "SelfTimer.Front"

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private setupWindowFlags()V
    .locals 4

    .prologue
    .line 5122
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5123
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5126
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5127
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5132
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5119
    return-void

    .line 5129
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

    .line 5419
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

    .line 5425
    return-void

    .line 5429
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 5430
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 5433
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 5434
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 5435
    .local v1, "isFrontCamera":Z
    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-nez v3, :cond_1

    .line 5438
    if-eqz v1, :cond_3

    .line 5441
    const/4 v2, 0x1

    .line 5442
    .local v2, "sensorDelay":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5443
    iput-boolean v6, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    .line 5444
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAccelerometer() - Accelerometer started"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    .end local v2    # "sensorDelay":I
    :cond_1
    return-void

    .line 5434
    .end local v1    # "isFrontCamera":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isFrontCamera":Z
    goto :goto_0

    .line 5439
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "sensorDelay":I
    goto :goto_1

    .line 5419
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

    .line 5526
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5527
    if-eqz p1, :cond_0

    .line 5529
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5541
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5543
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Cannot start preview in current state"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5544
    return v10

    .line 5534
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5538
    :pswitch_2
    return v11

    .line 5548
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 5549
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 5551
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - No camera to start preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5552
    return v10

    .line 5556
    :cond_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 5558
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5559
    return v10

    .line 5563
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_4

    .line 5565
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.camera.ACTION_CAMERA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5568
    :cond_4
    iget v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewSessionID:I

    .line 5571
    .local v3, "cameraPreviewSessionID":I
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-nez v0, :cond_5

    .line 5573
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Preview receiver is not ready yet, start preview later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5574
    return v11

    .line 5577
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

    .line 5580
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/Resolution;

    .line 5581
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/media/Resolution;

    .line 5582
    :goto_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_9

    move-object v7, v5

    .line 5583
    .local v7, "targetResolution":Lcom/oneplus/camera/media/Resolution;
    :goto_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 5584
    .local v6, "previewSize":Landroid/util/Size;
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    .line 5585
    .local v8, "previewReceiver":Ljava/lang/Object;
    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v0, Lcom/oneplus/camera/CameraActivity$36;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/CameraActivity$36;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;ILcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)V

    invoke-static {v9, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5666
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5667
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_6

    .line 5668
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 5669
    :cond_6
    return v10

    .line 5580
    .end local v6    # "previewSize":Landroid/util/Size;
    .end local v7    # "targetResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v8    # "previewReceiver":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x0

    .local v4, "photoResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_1

    .line 5581
    .end local v4    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_8
    const/4 v5, 0x0

    .local v5, "videoResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_2

    .line 5582
    .end local v5    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_9
    move-object v7, v4

    .restart local v7    # "targetResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_3

    .line 5673
    .restart local v6    # "previewSize":Landroid/util/Size;
    .restart local v8    # "previewReceiver":Ljava/lang/Object;
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5674
    const-string/jumbo v0, "CameraPreviewStartStop"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 5677
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5679
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p0, v9, v10

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 5680
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->bindToNormalComponents()Z

    .line 5684
    :cond_c
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startOrientationListener()V

    .line 5687
    return v11

    .line 5529
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
    .line 5695
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5696
    return-void

    .line 5697
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

    .line 5703
    return-void

    .line 5707
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5709
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-nez v0, :cond_1

    .line 5711
    new-instance v0, Lcom/oneplus/camera/CameraActivity$37;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$37;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 5736
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 5740
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5741
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 5742
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5692
    return-void

    .line 5697
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

    .line 5750
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 5751
    return-void

    .line 5754
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-eqz v0, :cond_1

    .line 5756
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5757
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    .line 5758
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAccelerometer() - Accelerometer stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5760
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    if-eqz v0, :cond_2

    .line 5762
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5763
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsGyroscopeStarted:Z

    .line 5764
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAccelerometer() - Gyroscope stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5766
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    .line 5747
    return-void
.end method

.method private stopOrientationListener()V
    .locals 2

    .prologue
    .line 5858
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5859
    return-void

    .line 5860
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 5862
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5856
    return-void
.end method

.method private stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 5870
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5871
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5873
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5874
    return-void

    .line 5877
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

    .line 5880
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 5883
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-ne v0, p1, :cond_1

    .line 5885
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Cancel pending capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 5887
    return-void

    .line 5891
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5893
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Stop self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5894
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5895
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 5896
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    new-instance v1, Lcom/oneplus/camera/CameraActivity$38;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraActivity$38;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 5905
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 5906
    return-void

    .line 5910
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

    .line 5917
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

    .line 5918
    return-void

    .line 5914
    :sswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5922
    iget-object v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5923
    iget-object v0, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 5867
    :goto_0
    return-void

    .line 5925
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Stop when starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5910
    nop

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
    .line 5932
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    .line 5930
    return-void
.end method

.method private stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZLcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z
    .param p4, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5938
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 5940
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5941
    return-void

    .line 5944
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

    .line 5945
    if-eqz p2, :cond_1

    .line 5946
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop from video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5949
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5952
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 5955
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

    .line 5966
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

    .line 5967
    return-void

    .line 5963
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5971
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5972
    const-string/jumbo v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5975
    :cond_2
    const/16 v1, -0x28

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5978
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

    .line 5986
    if-nez p2, :cond_3

    if-eqz p3, :cond_5

    .line 5991
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 5996
    :goto_0
    :pswitch_2
    iget-object v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5998
    const/4 v0, 0x0

    .line 5999
    .local v0, "flags":I
    iget v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 6000
    const/4 v0, 0x2

    .line 6001
    :cond_4
    iget-object v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 5934
    .end local v0    # "flags":I
    :goto_1
    return-void

    .line 5983
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 5988
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Waiting for video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    return-void

    .line 6004
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoCapture() - Stop when starting"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 5978
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchCamera(Lcom/oneplus/camera/Camera;)Z
    .locals 2
    .param p1, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 6114
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

    .line 6074
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6077
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6078
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 6079
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6082
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

    .line 6084
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

    .line 6085
    return v6

    .line 6089
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6090
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6092
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - Camera list is not ready yet, switch camera later"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6093
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6094
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "CameraLensFacing"

    invoke-virtual {v3, v4, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6095
    :cond_2
    return v5

    .line 6097
    :cond_3
    invoke-static {v1, p2, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6098
    .local v2, "newCamera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_4

    .line 6100
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

    .line 6101
    return v6

    .line 6103
    :cond_4
    if-ne v0, v2, :cond_5

    .line 6104
    return v5

    .line 6107
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

    .line 6119
    if-ne p1, p2, :cond_0

    .line 6121
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Switch to same camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6122
    return v6

    .line 6126
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6128
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Required permissions not granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6129
    return v5

    .line 6133
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

    .line 6139
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

    .line 6140
    return v5

    .line 6142
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

    .line 6148
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

    .line 6149
    return v5

    .line 6151
    :pswitch_1
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_2

    .line 6153
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6155
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Camera is switching"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6156
    return v5

    .line 6161
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6164
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6165
    const-string/jumbo v2, "CameraSwitchStartStop"

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 6168
    :cond_3
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_6

    .line 6170
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_7

    .line 6173
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    if-nez v2, :cond_4

    .line 6177
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 6179
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v2, v3, :cond_5

    .line 6181
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Closing, ignore switch camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6183
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 6184
    return v5

    .line 6187
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Show preview cover"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6188
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 6189
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v3

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_2

    .line 6197
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - No need to show preview cover"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6205
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6209
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 6216
    const/4 v0, 0x0

    .line 6219
    .local v0, "restartPreview":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    .line 6220
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_8

    .line 6222
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

    .line 6225
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6228
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 6229
    return v5

    .line 6194
    .end local v0    # "restartPreview":Z
    :pswitch_2
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/oneplus/camera/Camera;

    .line 6195
    return v6

    .line 6202
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Cannot start switch animation"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6213
    :pswitch_3
    const/4 v0, 0x1

    .line 6214
    .restart local v0    # "restartPreview":Z
    goto :goto_1

    .line 6233
    :cond_8
    if-eqz p1, :cond_9

    .line 6234
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, p1}, Lcom/oneplus/camera/CameraThread;->closeCamera(Lcom/oneplus/camera/Camera;)V

    .line 6237
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, p2}, Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v1

    .line 6238
    .local v1, "success":Z
    if-eqz v1, :cond_c

    .line 6240
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6241
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6242
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "CameraLensFacing"

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6248
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopAccelerometer()V

    .line 6251
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6255
    :cond_b
    :goto_3
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6258
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 6261
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 6264
    return v1

    .line 6245
    :cond_c
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Fail to open camera by camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6252
    :cond_d
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchCamera() - Fail to restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 6142
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 6189
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 6209
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private unlockCamera(Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    .prologue
    const/4 v3, 0x0

    .line 6291
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6294
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6296
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unlockCamera()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6299
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6303
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 6310
    const/4 v2, 0x1

    .line 6315
    .local v2, "restartPreview":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    .line 6317
    .local v0, "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    if-eqz v2, :cond_1

    :goto_1
    or-int/lit8 v1, v3, 0x4

    .line 6318
    .local v1, "flags":I
    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iget-object v3, v3, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v4, v3, v1}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;I)Z

    .line 6288
    .end local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    .end local v1    # "flags":I
    .end local v2    # "restartPreview":Z
    :cond_0
    return-void

    .line 6307
    :pswitch_0
    const/4 v2, 0x0

    .line 6308
    .restart local v2    # "restartPreview":Z
    goto :goto_0

    .line 6317
    .restart local v0    # "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    :cond_1
    const/16 v3, 0x20

    goto :goto_1

    .line 6303
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
    .line 6327
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6330
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6331
    return-void

    .line 6334
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6336
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unlockRotation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6337
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 6338
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_1

    .line 6339
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 6324
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_1
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 6347
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6349
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceivers()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6350
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6345
    :cond_0
    return-void
.end method

.method private updateBurstEnablingState()V
    .locals 5

    .prologue
    .line 6359
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

    .line 6373
    :pswitch_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6374
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 6377
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Camera is null, disable burst"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6378
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6379
    return-void

    .line 6366
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Activity exited, ignore it."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6367
    return-void

    .line 6384
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_1

    .line 6385
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    .line 6384
    if-nez v2, :cond_1

    .line 6386
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6387
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6392
    const/4 v1, 0x1

    .line 6393
    .local v1, "isEnabled":Z
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6395
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBurstEnablingState() - Burst enabled : "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6356
    return-void

    .line 6389
    .end local v1    # "isEnabled":Z
    :cond_1
    const/4 v1, 0x0

    .line 6388
    .restart local v1    # "isEnabled":Z
    goto :goto_0

    .line 6359
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
        :pswitch_1
    .end packed-switch
.end method

.method private updateElapsedRecordingTime(JJ)V
    .locals 25
    .param p1, "lastCheckTime"    # J
    .param p3, "seconds"    # J

    .prologue
    .line 6403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 6404
    .local v18, "checkTime":J
    const-wide/16 v2, 0x1

    add-long p3, p3, v2

    .line 6405
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6408
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 6409
    .local v22, "maxSeconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-ltz v2, :cond_0

    cmp-long v2, p3, v22

    if-ltz v2, :cond_0

    .line 6411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateElapsedRecordingTime() - Max duration ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sec) reached."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6412
    return-void

    .line 6417
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6418
    const-wide/16 v16, 0x3e8

    .line 6423
    .local v16, "interval":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/CameraActivity;->m_VideoRecordStartTime:J

    sub-long v20, v18, v2

    .line 6425
    .local v20, "diffFromStartTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 6427
    const-wide/16 v2, 0x1

    add-long v2, v2, p3

    mul-long v2, v2, v16

    sub-long v8, v2, v20

    .line 6428
    .local v8, "delay":J
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    const/16 v4, -0x28

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 6400
    .end local v8    # "delay":J
    :goto_1
    return-void

    .line 6420
    .end local v16    # "interval":J
    .end local v20    # "diffFromStartTime":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    iget v2, v2, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v2, v3, v2

    float-to-long v0, v2

    move-wide/from16 v16, v0

    .restart local v16    # "interval":J
    goto :goto_0

    .line 6431
    .restart local v20    # "diffFromStartTime":J
    :cond_2
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v15, v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v15, v3

    const/16 v12, -0x28

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v17}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_1
.end method

.method private updateScreenSize()V
    .locals 4

    .prologue
    .line 6438
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 6439
    .local v0, "size":Lcom/oneplus/base/ScreenSize;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6440
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

    .line 6441
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_1

    .line 6442
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/CameraThread;->setScreenSize(Lcom/oneplus/base/ScreenSize;)V

    .line 6436
    :cond_1
    return-void

    .line 6438
    .end local v0    # "size":Lcom/oneplus/base/ScreenSize;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateSelfTimerInterval()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 6450
    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-nez v5, :cond_0

    .line 6451
    return-void

    .line 6454
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-eq v5, v6, :cond_1

    .line 6456
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6457
    return-void

    .line 6461
    :cond_1
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6462
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 6464
    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateSelfTimerInterval() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6465
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6466
    return-void

    .line 6470
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Settings;

    .line 6471
    .local v4, "settings":Lcom/oneplus/base/Settings;
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    if-eqz v5, :cond_3

    .line 6473
    const-string/jumbo v5, "SelfTimer.Back"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6474
    const-string/jumbo v5, "SelfTimer.Front"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6475
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsSelfTimerResetNeeded:Z

    .line 6479
    :cond_3
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v5, v6, :cond_4

    const-string/jumbo v1, "SelfTimer.Back"

    .line 6480
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v1}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 6481
    .local v2, "seconds":J
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-super {p0, v5, v6}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6447
    return-void

    .line 6479
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "seconds":J
    :cond_4
    const-string/jumbo v1, "SelfTimer.Front"

    goto :goto_0
.end method

.method private updateSelfTimerUsability()V
    .locals 3

    .prologue
    .line 6489
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    .line 6490
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6495
    const/4 v0, 0x1

    .line 6496
    .local v0, "isUsable":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6486
    return-void

    .line 6492
    .end local v0    # "isUsable":Z
    :cond_0
    const/4 v0, 0x0

    .line 6491
    .restart local v0    # "isUsable":Z
    goto :goto_0
.end method

.method private updateStabilityLevel(I)V
    .locals 5
    .param p1, "stabilityLevel"    # I

    .prologue
    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 6504
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6505
    .local v0, "prevStabilityLevel":I
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_STABILITY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6517
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lt p1, v3, :cond_0

    if-lt v0, v3, :cond_0

    .line 6519
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

    .line 6520
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6521
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    .line 6501
    :cond_0
    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 4

    .prologue
    .line 6530
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-eqz v2, :cond_0

    .line 6531
    return-void

    .line 6534
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6537
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6538
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 6539
    return-void

    .line 6542
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 6543
    .local v1, "visibility":I
    or-int/lit16 v2, v1, 0x800

    or-int/lit16 v2, v2, 0x200

    or-int/lit8 v2, v2, 0x2

    or-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6527
    return-void
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 848
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 845
    :goto_0
    return-void

    .line 851
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

    .line 1098
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

    .line 1104
    return v2

    .line 1108
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1111
    return v2

    .line 1115
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1116
    return v2

    .line 1120
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canStartCameraPreview() - Required permissions not granted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return v2

    .line 1127
    :cond_2
    return v3

    .line 1098
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

    .line 1137
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

    .line 1153
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

    .line 1154
    return v3

    .line 1140
    :pswitch_0
    return v3

    .line 1142
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    return v3

    .line 1144
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

    .line 1150
    return v3

    .line 1148
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1144
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final capturePhoto()Lcom/oneplus/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 1165
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
    .line 1176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;
    .locals 9
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Invalid frame count"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-object v7

    .line 1199
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1200
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-nez v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - No camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    return-object v7

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - No capture mode manager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return-object v7

    .line 1210
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1213
    .local v3, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
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

    .line 1247
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

    .line 1248
    return-object v7

    .line 1218
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1220
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Counting-down self timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-object v7

    .line 1225
    :cond_4
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1227
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_5

    .line 1228
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

    .line 1231
    :goto_0
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

    .line 1232
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1230
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_0

    .line 1234
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fast shot-to-shot is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    return-object v7

    .line 1237
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_3

    .line 1239
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_7

    .line 1240
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

    .line 1243
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

    .line 1244
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1242
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_1

    .line 1250
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_8

    .line 1252
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

    .line 1253
    return-object v7

    .line 1257
    :cond_8
    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1262
    :cond_9
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

    .line 1265
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-direct {p0, v0, v8, v8}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1267
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1269
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1270
    return-object v7

    .line 1259
    .end local v0    # "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_a
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Burst capture is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const/4 p1, 0x1

    goto :goto_2

    .line 1274
    .restart local v0    # "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    :cond_b
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    return-object v1

    .line 1213
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
    .line 1423
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

    .line 1435
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1436
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_0

    .line 1438
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

    .line 1439
    return-object v6

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No capture mode manager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    return-object v6

    .line 1446
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1449
    .local v3, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
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

    .line 1452
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->captureVideo(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1453
    return-object v6

    .line 1454
    :cond_2
    return-object v0
.end method

.method public completeCapture(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 1721
    if-nez p1, :cond_0

    .line 1723
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeCapture() - No handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    return-void

    .line 1726
    :cond_0
    instance-of v1, p1, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void

    .line 1733
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    move-object v0, p1

    .line 1736
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1737
    .local v0, "handleImpl":Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1718
    :goto_0
    return-void

    .line 1740
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completePhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1743
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->completeVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1737
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableBurstPhotoCapture()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1836
    new-instance v0, Lcom/oneplus/camera/CameraActivity$13;

    const-string/jumbo v1, "BurstDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$13;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 1844
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1848
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1851
    :cond_0
    return-object v0
.end method

.method public disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 1862
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

    .line 1878
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1879
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 1881
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

    .line 1890
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

    .line 1891
    const/4 v1, 0x0

    return-object v1

    .line 1896
    :cond_0
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V

    .line 1897
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1898
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

    .line 1901
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1902
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1905
    :cond_1
    return-object v0

    .line 1881
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

    .line 1916
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1919
    new-instance v0, Lcom/oneplus/camera/CameraActivity$14;

    const-string/jumbo v1, "FastShotToShotDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$14;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 1927
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1930
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1931
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 1930
    if-eqz v1, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    .line 1934
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 1935
    iput-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 1937
    :cond_0
    return-object v0
.end method

.method public disableSelfTimer()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1948
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 1951
    new-instance v0, Lcom/oneplus/camera/CameraActivity$15;

    const-string/jumbo v1, "SelfTimerDisable"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$15;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 1959
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1962
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1964
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1965
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableSelfTimer() - Stop self-timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1973
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

    .line 1982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 1983
    .local v7, "action":I
    if-nez v7, :cond_0

    .line 1986
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

    .line 1987
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1990
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity;->m_LastNavBarVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Cancel touch event after showing navigation bar"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iput-boolean v12, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 1998
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 2004
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_3

    .line 2005
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2021
    :goto_0
    if-eq v7, v12, :cond_1

    if-ne v7, v13, :cond_2

    .line 2023
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

    .line 2024
    iput-boolean v11, p0, Lcom/oneplus/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 2025
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2029
    :cond_2
    return v10

    .line 2008
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2009
    .local v9, "fakeEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2010
    invoke-super {p0, v9}, Lcom/oneplus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2011
    .local v10, "result":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2015
    .end local v9    # "fakeEvent":Landroid/view/MotionEvent;
    .end local v10    # "result":Z
    :catch_0
    move-exception v8

    .line 2016
    .local v8, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Unhandled error"

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2017
    const/4 v10, 0x0

    .local v10, "result":Z
    goto :goto_0
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

    .line 2080
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 2082
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

    .line 2091
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 2093
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
    .line 2102
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 2104
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2107
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    return-object v0

    .line 2108
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 2110
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 2111
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    return-object v0

    .line 2112
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2113
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsIdle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2114
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2115
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2116
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2117
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 2118
    :cond_6
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraThread()Lcom/oneplus/camera/CameraThread;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;
    .locals 1

    .prologue
    .line 2157
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
    .line 2166
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 2169
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2163
    return-void
.end method

.method public final getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;
    .locals 5

    .prologue
    .line 2194
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_0

    .line 2196
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

    .line 2197
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v1, :cond_1

    .line 2199
    new-instance v0, Lcom/oneplus/camera/CameraActivity$16;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$16;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 2207
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2208
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2209
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2210
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$17;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$17;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2220
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2225
    .end local v0    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v1

    .line 2223
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getResolutionManager() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStartMode()Lcom/oneplus/camera/StartMode;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    return-object v0
.end method

.method public final getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;
    .locals 4

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v0, :cond_0

    .line 2237
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

    .line 2238
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$18;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object v0

    .line 2254
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToComponents() - No Viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2266
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2264
    :cond_0
    :goto_0
    return-void

    .line 2269
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStartFailed(Lcom/oneplus/camera/Camera;I)V

    goto :goto_0

    .line 2273
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewStarted(Lcom/oneplus/camera/Camera;I)V

    goto :goto_0

    .line 2278
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2279
    .local v0, "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/base/EventKey;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadEventReceived(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 2285
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2286
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/base/PropertyKey;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/base/PropertyChangeEventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadPropertyChanged(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0

    .line 2291
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage() - Close all cameras"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 2293
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->closeCameras()V

    goto :goto_0

    .line 2297
    :sswitch_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2301
    :sswitch_6
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->idle()V

    goto :goto_0

    .line 2306
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2307
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 2312
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2313
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onPhotoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V

    goto :goto_0

    .line 2318
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_9
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_0

    .line 2321
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    .line 2322
    .local v1, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v1, :cond_1

    .line 2323
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2324
    :cond_1
    iput-boolean v6, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 2325
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2330
    .end local v1    # "rotation":Lcom/oneplus/base/Rotation;
    :sswitch_a
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2332
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage() - Capture photo for stable capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_WAITING_FOR_STABLE_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2334
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v2, v4, v6}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z

    goto/16 :goto_0

    .line 2340
    :sswitch_b
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MSG_UPDATE_DELAYED_ROTATION"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2342
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/base/Rotation;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    goto/16 :goto_0

    .line 2348
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2349
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/oneplus/camera/CameraActivity;->updateElapsedRecordingTime(JJ)V

    goto/16 :goto_0

    .line 2354
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_d
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    goto/16 :goto_0

    .line 2359
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2360
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    goto/16 :goto_0

    .line 2365
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2366
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onVideoCaptureStarted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Lcom/oneplus/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 2371
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_10
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MSG_FINISH_BY_SELF"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 2266
    nop

    :sswitch_data_0
    .sparse-switch
        -0x82 -> :sswitch_a
        -0x6e -> :sswitch_4
        -0x5f -> :sswitch_b
        -0x50 -> :sswitch_d
        -0x46 -> :sswitch_5
        -0x3c -> :sswitch_9
        -0x33 -> :sswitch_10
        -0x32 -> :sswitch_6
        -0x28 -> :sswitch_c
        -0x1f -> :sswitch_f
        -0x1e -> :sswitch_e
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0xb -> :sswitch_1
        -0xa -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public hideReviewScreen()V
    .locals 3

    .prologue
    .line 2383
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

    .line 2386
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_2

    .line 2387
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 2380
    :cond_0
    :goto_1
    return-void

    .line 2383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2388
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1
.end method

.method protected final ignoreNavigationBar()V
    .locals 1

    .prologue
    .line 2412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    .line 2410
    return-void
.end method

.method public isPhotoServiceMode()Z
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2423
    const/4 v0, 0x1

    return v0

    .line 2425
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecurePhotoMode()Z
    .locals 2

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2447
    const/4 v0, 0x1

    return v0

    .line 2449
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    if-eq v0, v1, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_1

    .line 2463
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2461
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    if-eq v0, v1, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-eq v0, v1, :cond_0

    .line 2465
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoServiceMode()Z
    .locals 2

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2476
    const/4 v0, 0x1

    return v0

    .line 2478
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 2488
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

    .line 2501
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2502
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v3, v4, :cond_0

    .line 2504
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - Activity state is DESTROYED"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    return-object v6

    .line 2509
    :cond_0
    if-nez p1, :cond_1

    .line 2511
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - No lens facing specified"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    return-object v6

    .line 2516
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

    .line 2518
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

    .line 2519
    return-object v6

    .line 2523
    :cond_2
    new-instance v1, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera$LensFacing;)V

    .line 2524
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$CameraLockHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2525
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

    .line 2526
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 2529
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 2530
    .local v2, "oldCamera":Lcom/oneplus/camera/Camera;
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    invoke-direct {v0, v2, v7}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Lcom/oneplus/camera/Camera;Z)V

    .line 2531
    .local v0, "cameraContext":Lcom/oneplus/camera/CameraActivity$CameraContext;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2534
    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2536
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "lockCamera() - Fail to switch camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2538
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 2539
    return-object v6

    .line 2541
    :cond_3
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2543
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

    .line 2555
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 2558
    if-nez p1, :cond_2

    .line 2559
    iget-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2567
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$RotationLockHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    .line 2568
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$RotationLockHandle;
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2569
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 2571
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

    .line 2572
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2573
    .local v1, "prevRotation":Lcom/oneplus/base/Rotation;
    if-eq v1, p1, :cond_1

    .line 2575
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2576
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2577
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2578
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2579
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2581
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 2582
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2586
    .end local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_1
    return-object v0

    .line 2560
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

    .line 2562
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

    .line 2563
    return-object v6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;

    .line 2703
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;
    if-eqz v0, :cond_0

    .line 2705
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2706
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    if-eqz v1, :cond_0

    .line 2707
    iget-object v1, v0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 2709
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2700
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

    .line 2721
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

    .line 2730
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2731
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    const/4 v4, 0x1

    .line 2732
    .local v4, "selectCamera":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2734
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2736
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

    .line 2737
    const/4 v4, 0x1

    .line 2742
    :cond_0
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2745
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2747
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Required permissions not granted yet"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    return-void

    .line 2725
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v4    # "selectCamera":Z
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Already destroyed, skip"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    return-void

    .line 2731
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "selectCamera":Z
    goto :goto_0

    .line 2752
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2754
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Empty camera list"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    new-instance v6, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-direct {v6, v9, v10}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 2756
    return-void

    .line 2760
    :cond_4
    if-nez v4, :cond_5

    .line 2761
    return-void

    .line 2764
    :cond_5
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    .line 2765
    .local v5, "settings":Lcom/oneplus/base/Settings;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2766
    const-string/jumbo v6, "CameraLensFacing"

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2769
    :cond_6
    const-string/jumbo v6, "CameraLensFacing"

    const-class v7, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$LensFacing;

    .line 2770
    .local v2, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 2771
    if-nez v0, :cond_7

    .line 2773
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

    .line 2774
    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v6, :cond_d

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    .line 2775
    :goto_1
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 2777
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

    .line 2780
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2782
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;

    iget-object v2, v6, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 2783
    invoke-static {p1, v2, v10}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v3

    .line 2784
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

    .line 2785
    if-eqz v3, :cond_8

    .line 2787
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/CameraActivity$CameraContext;

    iput-object v0, v6, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .line 2788
    move-object v0, v3

    .line 2793
    .end local v3    # "lockedCamera":Lcom/oneplus/camera/Camera;
    :cond_8
    if-nez v0, :cond_9

    .line 2794
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - No camera to use"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    :cond_9
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2799
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

    .line 2807
    const/4 v1, 0x0

    .line 2812
    .local v1, "isRunning":Z
    :goto_2
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2816
    :cond_a
    :goto_3
    iget-boolean v6, p0, Lcom/oneplus/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    if-nez v6, :cond_b

    .line 2818
    iput-boolean v11, p0, Lcom/oneplus/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    .line 2819
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v7, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2821
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->bindToInitialComponents()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2822
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 2825
    :cond_b
    if-eqz v1, :cond_c

    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v7, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v6, v7, :cond_c

    if-eqz v0, :cond_c

    .line 2827
    iget-object v6, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAvailableCamerasChanged() - Start preview"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 2718
    :cond_c
    return-void

    .line 2774
    .end local v1    # "isRunning":Z
    :cond_d
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    goto/16 :goto_1

    .line 2804
    :sswitch_0
    const/4 v1, 0x1

    .line 2805
    .restart local v1    # "isRunning":Z
    goto :goto_2

    .line 2813
    :cond_e
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

    goto :goto_3

    .line 2721
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2799
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
    .line 2862
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2859
    return-void
.end method

.method protected onBindToCameraThread()V
    .locals 3

    .prologue
    .line 2839
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_0

    .line 2840
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 2843
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2844
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/CameraActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/CameraActivity$20;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2836
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
    .line 2872
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2873
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2874
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2875
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2876
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2877
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2878
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2880
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2881
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2882
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2883
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2870
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
    .line 2893
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2894
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2895
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2896
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2897
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2898
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2899
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2900
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2891
    return-void
.end method

.method protected onCameraError(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2934
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

    .line 2937
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2938
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 2932
    :cond_0
    return-void
.end method

.method protected onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 2946
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v0

    .line 2947
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

    .line 2950
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2951
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 2944
    :cond_0
    return-void
.end method

.method protected onCameraPreviewReceiverDestroyed(Z)V
    .locals 1
    .param p1, "syncPreviewStop"    # Z

    .prologue
    .line 2998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 3001
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 2995
    return-void
.end method

.method protected onCameraPreviewReceiverReady(Ljava/lang/Object;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 3012
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 3013
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-eqz v1, :cond_0

    .line 3015
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Stop preview first"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewReceiverDestroyed(Z)V

    .line 3020
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 3023
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 3025
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Continue starting preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3028
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCameraPreviewReceiverReady() - Fail to start preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    .line 3030
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3009
    :cond_1
    return-void
.end method

.method protected onCameraPreviewStartFailed()V
    .locals 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStartFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 3096
    return-void
.end method

.method protected onCameraPreviewStarted()V
    .locals 2

    .prologue
    .line 3042
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStarted() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    return-void

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStarted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startAccelerometer()V

    .line 3054
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    .line 3057
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3058
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 3061
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_2

    .line 3062
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetVideoCaptureState()V

    .line 3063
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_3

    .line 3064
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3039
    :cond_3
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
    .line 3180
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_2

    move-object v0, p2

    .line 3181
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V

    .line 3204
    :cond_0
    :goto_0
    instance-of v0, p2, Lcom/oneplus/base/RecyclableObject;

    if-eqz v0, :cond_1

    .line 3205
    check-cast p2, Lcom/oneplus/base/RecyclableObject;

    .end local p2    # "e":Lcom/oneplus/base/EventArgs;
    invoke-interface {p2}, Lcom/oneplus/base/RecyclableObject;->recycle()V

    .line 3178
    :cond_1
    return-void

    .line 3182
    .restart local p2    # "e":Lcom/oneplus/base/EventArgs;
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 3183
    check-cast v0, Lcom/oneplus/camera/CameraEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCameraError(Lcom/oneplus/camera/Camera;)V

    goto :goto_0

    .line 3184
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_4

    move-object v0, p2

    .line 3185
    check-cast v0, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    goto :goto_0

    .line 3186
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_5

    move-object v0, p2

    .line 3187
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onDefaultPhotoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3188
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 3189
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onDefaultVideoCaptureCompleted(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3190
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_7

    move-object v0, p2

    .line 3191
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaFileSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3192
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_8

    move-object v0, p2

    .line 3193
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3194
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_9

    move-object v0, p2

    .line 3195
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3196
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    .line 3197
    check-cast v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 3198
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_b

    move-object v0, p2

    .line 3199
    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    goto :goto_0

    .line 3200
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_c

    move-object v0, p2

    .line 3201
    check-cast v0, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 3202
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 3203
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
    .line 3217
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3218
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onAvailableCamerasChanged(Ljava/util/List;)V

    .line 3243
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle()V

    .line 3215
    return-void

    .line 3219
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 3221
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3222
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->onCameraPreviewReceived()V

    goto :goto_0

    .line 3225
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3226
    const-string/jumbo v0, "CameraPreviewFrameWaiting"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    .line 3227
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3228
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3231
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 3232
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3233
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 3234
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3235
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 3236
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->onCameraThreadCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;Lcom/oneplus/camera/PhotoCaptureState;)V

    goto :goto_0

    .line 3237
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 3238
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3239
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 3240
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3241
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 3242
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
    .line 3253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3254
    .local v0, "eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3255
    .local v3, "propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/MediaType;

    .line 3256
    .local v2, "initialMediaType":Lcom/oneplus/camera/media/MediaType;
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->onBindingToCameraThreadEvents(Ljava/util/List;)V

    .line 3257
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->onBindingToCameraThreadProperties(Ljava/util/List;)V

    .line 3258
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 3259
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 3261
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCameraThreadStarted() - No camera thread handler"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3263
    return-void

    .line 3265
    :cond_0
    new-instance v4, Lcom/oneplus/camera/CameraActivity$21;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/oneplus/camera/CameraActivity$21;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3274
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCameraThreadStarted() - Fail to start binding to camera thread"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3276
    return-void

    .line 3250
    :cond_1
    return-void
.end method

.method protected onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 3431
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 3440
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    .line 3441
    .local v0, "activityState":Lcom/oneplus/base/BaseActivity$State;
    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v2, :cond_1

    .line 3442
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 3445
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3448
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 3451
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onConfigurationChanged() - Orientation changed to "

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3452
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3454
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onConfigurationChanged() - Try starting preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 3437
    :cond_2
    return-void

    .line 3452
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3465
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSet(Landroid/view/View;)V

    .line 3468
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-nez v0, :cond_0

    .line 3470
    if-eqz p1, :cond_1

    .line 3472
    new-instance v0, Lcom/oneplus/camera/CameraActivity$23;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraActivity$23;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 3500
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 3462
    return-void

    .line 3496
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3586
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 3589
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    .line 3590
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Instance ID : "

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3593
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3596
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 3599
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkStartMode()V

    .line 3602
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->setupWindowFlags()V

    .line 3605
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3606
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3607
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3608
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3609
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3610
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3611
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3612
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3613
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3614
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3615
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3616
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3617
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3618
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3619
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3620
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3623
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkLatestLeavingTime()V

    .line 3626
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3627
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultSelfTimerInterval()V

    .line 3630
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$26;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$26;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3638
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$27;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$27;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3648
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getRequestedOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 3651
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v6}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3652
    .local v1, "settings":Lcom/oneplus/base/Settings;
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/camera/CameraActivity$SettingsHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3653
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3656
    new-instance v2, Lcom/oneplus/camera/CameraThread;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$28;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$28;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 3664
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 3656
    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/camera/CameraThread;-><init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    .line 3667
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 3670
    const-string/jumbo v2, "CameraPreviewStartStop"

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 3673
    new-instance v2, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v2}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 3674
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 3675
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$29;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$29;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3683
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraActivity$30;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$30;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3691
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3693
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 3694
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3695
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3696
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 3700
    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3583
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 3742
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3745
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->unregisterReceivers()V

    .line 3748
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_0

    .line 3750
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->release()V

    .line 3753
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3762
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 3765
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3767
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v1, :cond_1

    .line 3768
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v2, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3771
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onDestroy()V

    .line 3774
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 3739
    return-void

    .line 3756
    :catch_0
    move-exception v0

    .line 3757
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
    .line 3784
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceOrientationChanged() - Unknown orientation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    return-void

    .line 3789
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3782
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 3852
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    .line 3855
    const/4 v0, 0x1

    .line 3856
    .local v0, "allGranted":Z
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3858
    aget v2, p2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 3860
    const/4 v0, 0x0

    .line 3866
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3867
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v2, :cond_1

    .line 3868
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    .line 3871
    :cond_1
    if-nez v0, :cond_3

    .line 3873
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialPermissionsRequestCompleted() - Some permissions are not granted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 3875
    return v4

    .line 3856
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3878
    :cond_3
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 3888
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3891
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 3894
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3896
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    .line 3897
    .local v0, "handler":Lcom/oneplus/camera/KeyEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/oneplus/camera/KeyEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v2

    .line 3898
    .local v2, "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3894
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3901
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, " is handled by "

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3902
    const/4 v3, 0x1

    return v3

    .line 3904
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Pass to system directly: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3905
    return v5

    .line 3910
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

    .line 3912
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyDown() - Capture UI is disabled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    return v5

    .line 3917
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3927
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3929
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Not a pair of key down and key up event"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    return v5

    .line 3934
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3936
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v3, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    .line 3937
    .local v0, "handler":Lcom/oneplus/camera/KeyEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/oneplus/camera/KeyEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v2

    .line 3938
    .local v2, "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-KeyEventHandler$KeyResultSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3934
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3941
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, " is handled by "

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3942
    return v7

    .line 3944
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Pass to system directly: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3945
    return v5

    .line 3950
    .end local v0    # "handler":Lcom/oneplus/camera/KeyEventHandler;
    .end local v2    # "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3952
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Capture UI is disabled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    return v5

    .line 3957
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 3960
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

    .line 3973
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Back pressed, leave camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3976
    :goto_1
    return v7

    .line 3964
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3966
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onKeyUp() - Back pressed, stop video capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v3, v5, v5}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3969
    :cond_3
    return v7

    .line 3975
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 3980
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3960
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4016
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 4019
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4022
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 4025
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4026
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4029
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v0

    .line 4030
    .local v0, "isSecureMode":Z
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->checkStartMode(Landroid/content/Intent;)V

    .line 4031
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4039
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->setupWindowFlags()V

    .line 4042
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkLatestLeavingTime()V

    .line 4045
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4047
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultSelfTimerInterval()V

    .line 4048
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->restoreToDefaultCamera()V

    .line 4013
    :cond_1
    return-void

    .line 4033
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onNewIntent() - Instance becomes non-secure mode from secure mode, finish itself"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 4035
    return-void
.end method

.method protected onPause()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 4058
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4060
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Stop photo capture"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4063
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 4064
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .line 4066
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 4070
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/oneplus/camera/CameraActivity$31;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraActivity$31;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4081
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onPause()V

    .line 4084
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    .line 4087
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 4088
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 4091
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopAccelerometer()V

    .line 4094
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->stopOrientationListener()V

    .line 4097
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 4099
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    new-array v4, v7, [Lcom/oneplus/camera/CameraActivity$UIDisableHandle;

    .line 4100
    .local v4, "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4101
    array-length v7, v4

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 4103
    aget-object v3, v4, v5

    .line 4104
    .local v3, "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    iget v7, v3, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 4106
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

    .line 4107
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4101
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4110
    .end local v3    # "handle":Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    :cond_3
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

    .line 4111
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4112
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4121
    .end local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    :cond_4
    iget-boolean v7, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-eqz v7, :cond_5

    .line 4123
    iput-boolean v10, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4124
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4128
    :cond_5
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_6

    .line 4130
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4131
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4135
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 4137
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4138
    .local v0, "contentView":Landroid/view/View;
    instance-of v7, v0, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_c

    .line 4140
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Take screen-shot [start]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    .line 4144
    .local v6, "isDrawingCacheEnabled":Z
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4145
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4146
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_a

    .line 4147
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4153
    :goto_1
    if-nez v6, :cond_7

    .line 4154
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4161
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Take screen-shot [end]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_b

    .line 4163
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->m_ScreenShots:Ljava/util/Map;

    iget-object v8, p0, Lcom/oneplus/camera/CameraActivity;->m_InstanceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    .end local v0    # "contentView":Landroid/view/View;
    :cond_8
    :goto_3
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_PreviousRotation:Lcom/oneplus/base/Rotation;

    .line 4175
    const/16 v7, -0x6e

    const-wide/16 v8, 0x12c

    invoke-static {p0, v7, v12, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 4178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sput-wide v8, Lcom/oneplus/camera/CameraActivity;->m_LatestLeaveTimeMillis:J

    .line 4055
    return-void

    .line 4115
    .restart local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .restart local v5    # "i":I
    :cond_9
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_4
    if-ltz v5, :cond_4

    .line 4116
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

    .line 4115
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 4150
    .end local v4    # "handles":[Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    .restart local v0    # "contentView":Landroid/view/View;
    .restart local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .restart local v6    # "isDrawingCacheEnabled":Z
    :cond_a
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4151
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - No drawing cache"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4157
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :catch_0
    move-exception v2

    .line 4158
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Fail to take screen-shot"

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4159
    iput-object v11, p0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 4165
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    goto :goto_3

    .line 4168
    :cond_c
    iget-object v7, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onPause() - Cannot show screen-shot because content view is not RelativeLayout"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onPhotoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4188
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

    .line 4189
    return-void

    .line 4192
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

    .line 4195
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

    .line 4207
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

    .line 4208
    return-void

    .line 4198
    :sswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 4199
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    .line 4200
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4183
    :goto_0
    return-void

    .line 4203
    :sswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4204
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    goto :goto_0

    .line 4195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v5, -0x6e

    const/4 v3, 0x1

    .line 4311
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4313
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onResume() - Cancel closing cameras"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4318
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateScreenSize()V

    .line 4321
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 4322
    .local v1, "pm":Landroid/os/PowerManager;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4325
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onResume()V

    .line 4328
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    if-ne v4, v2, :cond_1

    .line 4329
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 4332
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4333
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->resetIdleState()V

    .line 4336
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 4337
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    const/16 v6, -0x50

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4340
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->registerReceivers()V

    .line 4341
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 4343
    new-instance v2, Lcom/oneplus/camera/CameraActivity$32;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraActivity$32;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4354
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4355
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4359
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4360
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v4, :cond_6

    .line 4361
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v2, v4, :cond_6

    .line 4363
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 4383
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 4386
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4392
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 4308
    return-void

    .line 4328
    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    .line 4365
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v2, v4, :cond_7

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v4, :cond_3

    .line 4367
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onResume() - preview is already started"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->startOrientationListener()V

    .line 4373
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/oneplus/camera/CameraActivity$33;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/CameraActivity$33;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 4379
    const-wide/16 v6, 0x64

    .line 4373
    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4388
    :cond_8
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4389
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 4406
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4422
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4424
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4425
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4426
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4407
    :cond_0
    return-void

    .line 4410
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4414
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->isSystemOrientationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4415
    sget-object p2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 4418
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4422
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4424
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4425
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4426
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4401
    :cond_3
    return-void

    .line 4421
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 4422
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4424
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4425
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraActivity;->m_IsRotationReady:Z

    .line 4426
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4421
    :cond_4
    throw v1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 4453
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->checkRequiredPermissions()V

    .line 4456
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onStart()V

    .line 4459
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4460
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->removeScreenShot()V

    .line 4463
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-eqz v0, :cond_1

    .line 4464
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 4450
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 4473
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 4476
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onStop()V

    .line 4479
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->m_ScreenShots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4470
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4497
    invoke-static {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->obtain(Landroid/view/MotionEvent;)Lcom/oneplus/camera/ui/MotionEventArgs;

    move-result-object v0

    .line 4498
    .local v0, "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4499
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4501
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->recycle()V

    .line 4502
    const/4 v1, 0x1

    return v1

    .line 4504
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;->recycle()V

    .line 4507
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onVideoCaptureFailed(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 4523
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

    .line 4524
    return-void

    .line 4527
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

    .line 4530
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 4545
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

    .line 4546
    return-void

    .line 4534
    :sswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 4535
    check-cast v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 4536
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4537
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 4518
    :goto_0
    return-void

    .line 4540
    :sswitch_1
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4541
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 4542
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4530
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public pauseAudioPlaybackForVideoRecording()V
    .locals 4

    .prologue
    .line 6557
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 6558
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6555
    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 4673
    return-void
.end method

.method public requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 4708
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 4709
    new-instance v0, Lcom/oneplus/camera/CameraActivity$35;

    const-string/jumbo v1, "PreCaptureFocusLockRequest"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$35;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 4717
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4718
    return-object v0
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 6551
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 6552
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 6550
    return-void
.end method

.method protected selectCameraPreviewSize()V
    .locals 1

    .prologue
    .line 4910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize(Z)V

    .line 4908
    return-void
.end method

.method protected selectCameraPreviewSize(Z)V
    .locals 7
    .param p1, "forceRestartPreview"    # Z

    .prologue
    .line 4921
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v2

    .line 4922
    .local v2, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-nez v2, :cond_0

    .line 4924
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - No ResolutionManager."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4925
    return-void

    .line 4929
    :cond_0
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 4931
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

    .line 4940
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

    .line 4941
    return-void

    .line 4934
    :pswitch_0
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 4946
    .local v1, "previewSize":Landroid/util/Size;
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 4960
    const/4 v3, 0x0

    .line 4965
    .local v3, "restartPreview":Z
    :goto_1
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4968
    if-eqz v3, :cond_1

    .line 4970
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - Restart preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4971
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 4918
    :cond_1
    return-void

    .line 4937
    .end local v1    # "previewSize":Landroid/util/Size;
    .end local v3    # "restartPreview":Z
    :pswitch_1
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .restart local v1    # "previewSize":Landroid/util/Size;
    goto :goto_0

    .line 4950
    :pswitch_2
    if-nez p1, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4957
    const/4 v3, 0x0

    .restart local v3    # "restartPreview":Z
    goto :goto_1

    .line 4952
    .end local v3    # "restartPreview":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "selectCameraPreviewSize() - Stop preview to change preview size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4953
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 4954
    const/4 v3, 0x1

    .line 4951
    .restart local v3    # "restartPreview":Z
    goto :goto_1

    .line 4931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4946
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
    .line 4980
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 4981
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setSelfTimerIntervalProp(J)Z

    move-result v0

    return v0

    .line 4982
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 4990
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentView() - Load content view [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4991
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4992
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentView() - Load content view [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4993
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 4988
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5001
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5002
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 5003
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4999
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5011
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5012
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5013
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5009
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2
    .param p1, "debug"    # Z

    .prologue
    .line 5366
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5364
    return-void
.end method

.method public setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/oneplus/camera/KeyEventHandler;

    .prologue
    .line 5021
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5024
    const/4 v0, 0x0

    .line 5025
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

    .line 5027
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    iget-object v3, v1, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    if-ne v3, p1, :cond_0

    .line 5029
    move-object v0, v1

    .line 5033
    .end local v0    # "candHandle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    .end local v1    # "handle":Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
    :cond_1
    if-eqz v0, :cond_2

    .line 5035
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5036
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5043
    :goto_0
    return-object v0

    .line 5040
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/KeyEventHandler;)V

    .line 5041
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
    .line 5088
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5090
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5091
    return-void

    .line 5095
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5112
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

    .line 5113
    return-void

    .line 5098
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5099
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5100
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 5085
    :goto_0
    return-void

    .line 5103
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - OK, Inline bitmap: "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5105
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 5108
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5109
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 5095
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

    .line 5051
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5053
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5054
    return-void

    .line 5058
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5078
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

    .line 5079
    return-void

    .line 5061
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5062
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5063
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 5048
    :goto_0
    return-void

    .line 5066
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - OK, Uri: "

    iget-object v2, p2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5067
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 5068
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5071
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 5070
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->setResult(I)V

    goto :goto_1

    .line 5074
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5075
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 5058
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

    .line 5144
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5145
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5146
    return v4

    .line 5147
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

    .line 5148
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5179
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

    .line 5180
    return v3

    .line 5152
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

    .line 5158
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

    .line 5159
    return v3

    .line 5166
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

    .line 5172
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

    .line 5173
    return v3

    .line 5184
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5186
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5188
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Fail to change media type"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    return v3

    .line 5193
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Change media type before camera thread start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5194
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5197
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5198
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5203
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 5206
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerUsability()V

    .line 5207
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateSelfTimerInterval()V

    .line 5210
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;->updateBurstEnablingState()V

    .line 5213
    return v4

    .line 5200
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5152
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5166
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

    .line 5257
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_0

    .line 5258
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change activity rotation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5259
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_4

    .line 5262
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraActivity$CameraContext;

    move-object v0, v3

    .line 5263
    .local v0, "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    :cond_1
    if-nez v0, :cond_3

    .line 5265
    new-instance v0, Lcom/oneplus/camera/CameraActivity$CameraContext;

    .end local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/CameraActivity$CameraContext;-><init>(Z)V

    .line 5266
    .restart local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 5267
    const/4 v2, 0x0

    .line 5271
    :goto_0
    check-cast p2, Lcom/oneplus/camera/Camera;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    iput-object p2, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .line 5272
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v4, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-super {p0, v3, v4}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 5273
    .local v1, "isSuccess":Z
    if-eqz v1, :cond_2

    .line 5274
    iget-object v3, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 5275
    :cond_2
    return v1

    .line 5270
    .end local v1    # "isSuccess":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    iget-object v2, v0, Lcom/oneplus/camera/CameraActivity$CameraContext;->camera:Lcom/oneplus/camera/Camera;

    .local v2, "prevCamera":Lcom/oneplus/camera/Camera;
    goto :goto_0

    .line 5277
    .end local v0    # "context":Lcom/oneplus/camera/CameraActivity$CameraContext;
    .end local v2    # "prevCamera":Lcom/oneplus/camera/Camera;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_5

    .line 5278
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change camera preview state."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5279
    :cond_5
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v3, :cond_6

    .line 5280
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "Cannot change UI rotation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5281
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x0

    .line 5225
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5226
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

    .line 5234
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

    .line 5235
    return-object v4

    .line 5239
    :pswitch_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 5241
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

    .line 5242
    return-object v4

    .line 5246
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;-><init>(Lcom/oneplus/camera/CameraActivity;F)V

    .line 5247
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5248
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreRecordingTimeRatio() - Ratio : "

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

    .line 5249
    return-object v0

    .line 5226
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
    .line 5289
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->setRequestedOrientation(I)V

    .line 5290
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 5287
    return-void
.end method

.method public setRotationDelayTime(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 5297
    const/16 v1, -0x5f

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5299
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

    .line 5300
    iput-wide p1, p0, Lcom/oneplus/camera/CameraActivity;->m_RotationDelay:J

    .line 5302
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 5305
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 5306
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 5307
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 5294
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_0
    return-void
.end method

.method public final setSettings(Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    const/4 v3, 0x0

    .line 5344
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5347
    if-nez p1, :cond_0

    .line 5349
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSettings() - No settings."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    return-object v3

    .line 5354
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraActivity$SettingsHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraActivity$SettingsHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    .line 5355
    .local v0, "handle":Lcom/oneplus/camera/CameraActivity$SettingsHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5356
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

    .line 5359
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5360
    return-object v0
.end method

.method public showReviewScreen()Z
    .locals 2

    .prologue
    .line 5373
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 5375
    const-class v0, Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ReviewScreen;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    .line 5376
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 5378
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Cannot find ReviewScreen component"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5379
    const/4 v0, 0x0

    return v0

    .line 5384
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenUI:Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/ReviewScreen;->showReviewScreen()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 5386
    const/4 v0, 0x1

    return v0
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 5396
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 5394
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 5406
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-nez v0, :cond_0

    .line 5407
    const-class v0, Lcom/oneplus/camera/ui/ToastManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ToastManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-eqz v0, :cond_1

    .line 5409
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/camera/ui/ToastManager;->showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    .line 5404
    :goto_0
    return-void

    .line 5411
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

    .line 5471
    if-nez p1, :cond_0

    .line 5473
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - No intent"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    return-object v5

    .line 5478
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5481
    const/16 v2, 0x40

    .line 5482
    .local v2, "requestCode":I
    :goto_0
    if-lez v2, :cond_1

    .line 5484
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5487
    :cond_1
    if-gtz v2, :cond_3

    .line 5489
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - No available request code"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5490
    return-object v5

    .line 5482
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5494
    :cond_3
    new-instance v1, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)V

    .line 5495
    .local v1, "handle":Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5500
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5501
    return-object v1

    .line 5504
    :catch_0
    move-exception v0

    .line 5505
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivityForResult() - Fail to start activity"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5506
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 5507
    return-object v5
.end method

.method public final startCameraPreview()Z
    .locals 1

    .prologue
    .line 5518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview()V
    .locals 3

    .prologue
    .line 5775
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 5776
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    return-void

    .line 5778
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 5779
    .local v1, "hardwareLevel":Lcom/oneplus/camera/Camera$HardwareLevel;
    sget-object v2, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    if-ne v1, v2, :cond_1

    .line 5780
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 5773
    :goto_0
    return-void

    .line 5782
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0
.end method

.method public stopCameraPreview(Z)V
    .locals 7
    .param p1, "sync"    # Z

    .prologue
    .line 5789
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 5790
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 5806
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 5807
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 5809
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 5810
    return-void

    .line 5795
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Stop while starting"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5798
    :pswitch_2
    if-nez p1, :cond_0

    .line 5799
    return-void

    .line 5802
    :pswitch_3
    return-void

    .line 5814
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5815
    const-string/jumbo v4, "CameraPreviewStartStop"

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 5818
    :cond_2
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v4, v5, :cond_3

    .line 5819
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5820
    :cond_3
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v4, v5, :cond_4

    .line 5821
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5824
    :cond_4
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v4, v5, :cond_5

    .line 5826
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Process interrupted"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    return-void

    .line 5831
    :cond_5
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    .line 5832
    .local v1, "flags":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    if-eqz v4, :cond_7

    .line 5834
    if-eqz p1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5835
    .local v2, "time":J
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5837
    if-eqz p1, :cond_b

    .line 5838
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Fail to stop camera preview synchronously"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5842
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 5844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 5845
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

    .line 5850
    .end local v2    # "time":J
    :cond_7
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->m_CameraPreviewState:Lcom/oneplus/camera/OperationState;

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_8

    .line 5851
    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraActivity;->changeCameraPreviewState(Lcom/oneplus/camera/OperationState;)Lcom/oneplus/camera/OperationState;

    .line 5786
    :cond_8
    return-void

    .line 5831
    .end local v1    # "flags":I
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto :goto_1

    .line 5834
    :cond_a
    const-wide/16 v2, 0x0

    .restart local v2    # "time":J
    goto :goto_2

    .line 5840
    :cond_b
    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopCameraPreview() - Fail to stop camera preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5790
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

    .line 6015
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 6018
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 6019
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 6021
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6022
    return v6

    .line 6026
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

    .line 6028
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

    .line 6029
    return v6

    .line 6033
    :cond_1
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_2

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    .line 6034
    .local v1, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v1, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 6035
    .local v2, "newCamera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_3

    .line 6037
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "switchCamera() - No camera to switch"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6038
    return v6

    .line 6033
    .end local v1    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .end local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :cond_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    .restart local v1    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    goto :goto_0

    .line 6040
    .restart local v2    # "newCamera":Lcom/oneplus/camera/Camera;
    :cond_3
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

    .line 6043
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera;)Z

    move-result v3

    return v3
.end method

.method public switchCamera(Lcom/oneplus/camera/Camera$LensFacing;)Z
    .locals 1
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 6054
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
    .line 6066
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
    .line 6275
    new-instance v0, Lcom/oneplus/camera/CameraActivity$39;

    const-string/jumbo v1, "TakeScreenShot"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraActivity$39;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 6282
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6283
    return-object v0
.end method
