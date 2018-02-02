.class public interface abstract Lcom/oneplus/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/Camera$Face;,
        Lcom/oneplus/camera/Camera$HardwareLevel;,
        Lcom/oneplus/camera/Camera$LensFacing;,
        Lcom/oneplus/camera/Camera$MeteringRect;,
        Lcom/oneplus/camera/Camera$State;
    }
.end annotation


# static fields
.field public static final AWB_AUTO:I = 0x1

.field public static final AWB_MANUAL:I = 0x65

.field public static final AWB_MODE_AUTO:I = 0x1

.field public static final AWB_MODE_CLOUDY_DAYLIGHT:I = 0x6

.field public static final AWB_MODE_DAYLIGHT:I = 0x5

.field public static final AWB_MODE_FLUORESCENT:I = 0x3

.field public static final AWB_MODE_INCANDESCENT:I = 0x2

.field public static final COLOR_TEMPERATURE_AUTO:I = 0x0

.field public static final EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ERROR:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/MotionVectorEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
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

.field public static final EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;
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
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EV_AUTO:F = 0.0f

.field public static final EXPOSURE_TIME_AUTO:J = -0x1L

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_BOKEH_PICTURE:I

.field public static final FLAG_ORIGINAL_PICTURE:I

.field public static final FOCUS_AUTO:F = -1.0f

.field public static final ISO_AUTO:I = -0x1

.field public static final PROP_ACTIVE_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ACTIVE_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ACTIVE_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ACTIVE_ISO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_BOKEH_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/BokehState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FACES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FocusMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/FocusState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera$HardwareLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ID:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_COLOR_TEMPERATURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SERVICE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SPECIAL_VIDEO_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_STANDALONE_FACE_BEAUTY_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LOCATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/util/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SCENE_MODE_AUTO_HDR:I = 0x2711

.field public static final SCENE_MODE_DISABLED:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 100
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActiveColorTemperature"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    .line 104
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActiveExposureCompensation"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    .line 108
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActiveExposureTimeNanos"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    .line 112
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActiveISO"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_ISO:Lcom/oneplus/base/PropertyKey;

    .line 117
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "AeRegions"

    const-class v8, Ljava/util/List;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    .line 122
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "AfRegions"

    const-class v8, Ljava/util/List;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    .line 126
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AEState"

    const-class v2, Lcom/oneplus/camera/AutoExposureState;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 131
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AlternativePictureSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 135
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AutoHDR"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    .line 139
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "AwbMode"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    .line 144
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AwbModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    .line 148
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "BokehPictureSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_BOKEH_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 152
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "BokehState"

    const-class v2, Lcom/oneplus/camera/BokehState;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    .line 156
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "BokehStrength"

    const-class v8, Ljava/lang/Float;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;

    .line 160
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraCharacteristics"

    const-class v2, Ljava/lang/Object;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CaptureState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "ColorTemperature"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    .line 172
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "DigitalZoom"

    const-class v8, Ljava/lang/Float;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 176
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "ExposureCompensation"

    const-class v8, Ljava/lang/Float;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompensationRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v6, Landroid/util/Range;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompensationStep"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "ExposureTimeNanos"

    const-class v8, Ljava/lang/Long;

    const-class v9, Lcom/oneplus/camera/Camera;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    .line 194
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureTimeNanosRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v6, Landroid/util/Range;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 199
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Faces"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    .line 203
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyDefaultValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 207
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "FaceBeautyValue"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 212
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValueList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 216
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "FlashMode"

    const-class v8, Lcom/oneplus/camera/FlashMode;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    .line 221
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-array v6, v4, [Lcom/oneplus/camera/FlashMode;

    sget-object v7, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v7, v6, v12

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    .line 225
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocalLength"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    .line 229
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "Focus"

    const-class v8, Ljava/lang/Float;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    .line 233
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "FocusMode"

    const-class v8, Lcom/oneplus/camera/FocusMode;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    .line 238
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    .line 243
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v6, Landroid/util/Range;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 247
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusState"

    const-class v2, Lcom/oneplus/camera/FocusState;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    .line 251
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusStep"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/Camera;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    .line 255
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HardwareLevel"

    const-class v2, Lcom/oneplus/camera/Camera$HardwareLevel;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 259
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasFlash"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    .line 263
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ID"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/camera/Camera;

    const-string/jumbo v6, ""

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    .line 267
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsActivePictureInfoSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 271
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsAELocked"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 275
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsAwbLocked"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 279
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsBokehDebugEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 283
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsBokehEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 287
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsBokehOriginalPictureEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 291
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBokehOriginalPictureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 295
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBokehSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 299
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 303
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 307
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsColorTemperatureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_COLOR_TEMPERATURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 311
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsFaceDetectionEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 315
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsFixedSizePreviewReceiverNeeded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    .line 319
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsHighVideoFrameRateSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 323
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsLongProcessingCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 327
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsManualCapture"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 331
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsManualControlSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 335
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsMirrored"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    .line 339
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsMirrorSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 343
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 347
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsRawCaptureEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 351
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsRawCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 355
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsRecordingMode"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    .line 359
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsScreenFlashNeeded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    .line 363
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsServiceMode"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_SERVICE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 367
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSmileCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 371
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsSpecialVideoMode"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_SPECIAL_VIDEO_MODE:Lcom/oneplus/base/PropertyKey;

    .line 375
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsStandaloneFaceBeautyEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_STANDALONE_FACE_BEAUTY_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 379
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsStandaloneFaceBeautySupported"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 383
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsTimeLapseMode"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 387
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsWatermarkSupported"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 391
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "ISO"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    .line 396
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ISORange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v4, Landroid/util/Range;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 400
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "JpegQuality"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    .line 404
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "LensFacing"

    const-class v2, Lcom/oneplus/camera/Camera$LensFacing;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 408
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Location"

    const-class v2, Landroid/location/Location;

    const-class v3, Lcom/oneplus/camera/Camera;

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    .line 412
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAeRegionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 416
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAfRegionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 420
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxDigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/Camera;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 424
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MotionState"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;

    .line 428
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "PictureFormat"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 432
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "PictureRotation"

    const-class v8, Lcom/oneplus/base/Rotation;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 436
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "PictureSize"

    const-class v8, Landroid/util/Size;

    const-class v9, Lcom/oneplus/camera/Camera;

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 441
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PictureSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 446
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PreviewFpsRanges"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    .line 451
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PreviewFpsRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/Camera;

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 455
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PreviewReceiver"

    const-class v2, Ljava/lang/Object;

    const-class v3, Lcom/oneplus/camera/Camera;

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    .line 459
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "PreviewSize"

    const-class v8, Landroid/util/Size;

    const-class v9, Lcom/oneplus/camera/Camera;

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 464
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PreviewSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 468
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 472
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "SceneMode"

    const-class v8, Ljava/lang/Integer;

    const-class v9, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 477
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SceneModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 481
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 485
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorPhysicalSize"

    const-class v2, Landroid/util/SizeF;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v4, Landroid/util/SizeF;

    invoke-direct {v4, v13, v13}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 489
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorRatio"

    const-class v2, Lcom/oneplus/util/AspectRatio;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;

    .line 493
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 497
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorSizeFull"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/Camera;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 501
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "State"

    const-class v2, Lcom/oneplus/camera/Camera$State;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 506
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 511
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Video60FpsSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 515
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "VideoSize"

    const-class v8, Landroid/util/Size;

    const-class v9, Lcom/oneplus/camera/Camera;

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v12, v12}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 520
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "WatermarkBoundsMap"

    const-class v8, Ljava/util/Map;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    .line 525
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "WatermarkFilePathsMap"

    const-class v8, Ljava/util/Map;

    const-class v9, Lcom/oneplus/camera/Camera;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    .line 531
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "BokehDebugInfoUpdated"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    .line 535
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureFailed"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    .line 539
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Error"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    .line 543
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MotionVectorReceived"

    const-class v2, Lcom/oneplus/camera/MotionVectorEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 547
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "OpenCancelled"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 551
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "OpenFailed"

    const-class v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 555
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PictureReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 559
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PostviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 563
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PreviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 567
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "RawPictureReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 571
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 577
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/camera/Camera;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Camera;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 581
    sget-object v0, Lcom/oneplus/camera/Camera;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/camera/Camera;->FLAG_ORIGINAL_PICTURE:I

    .line 585
    sget-object v0, Lcom/oneplus/camera/Camera;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/camera/Camera;->FLAG_BOKEH_PICTURE:I

    .line 36
    return-void
.end method


# virtual methods
.method public abstract bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
.end method

.method public abstract calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
.end method

.method public abstract cancelAutoFocus(I)V
.end method

.method public abstract capture(II)Lcom/oneplus/base/Handle;
.end method

.method public abstract close(I)V
.end method

.method public abstract getBokehDebugInfo()[Lcom/oneplus/camera/BokehDebugInfo;
.end method

.method public abstract open(I)Z
.end method

.method public abstract pauseVideoRecording(I)Z
.end method

.method public abstract resumeVideoRecording(I)Z
.end method

.method public abstract startAutoFocus(I)Z
.end method

.method public abstract startPreview(I)Z
.end method

.method public abstract startVideoRecording(I)Z
.end method

.method public abstract stopPreview(I)V
.end method

.method public abstract stopVideoRecording(I)Z
.end method

.method public abstract unbindMediaRecorder(I)Z
.end method
