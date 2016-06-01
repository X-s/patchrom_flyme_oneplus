.class final Lcom/oneplus/camera/ComponentBuilders;
.super Ljava/lang/Object;
.source "ComponentBuilders.java"


# static fields
.field static final BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

.field static final BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    const/4 v0, 0x7

    new-array v3, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v0, Lcom/oneplus/camera/media/AudioManagerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/media/AudioManagerBuilder;-><init>()V

    aput-object v0, v3, v2

    new-instance v4, Lcom/oneplus/camera/location/LocationManagerBuilder;

    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v4, v0}, Lcom/oneplus/camera/location/LocationManagerBuilder;-><init>(Z)V

    aput-object v4, v3, v1

    new-instance v0, Lcom/oneplus/camera/manual/ManualModeControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/manual/ManualModeControllerBuilder;-><init>()V

    aput-object v0, v3, v5

    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;-><init>()V

    aput-object v0, v3, v6

    new-instance v0, Lcom/oneplus/camera/slowmotion/SlowMotionControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/slowmotion/SlowMotionControllerBuilder;-><init>()V

    aput-object v0, v3, v7

    const/4 v0, 0x5

    new-instance v4, Lcom/oneplus/camera/timelapse/TimelapseControllerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/timelapse/TimelapseControllerBuilder;-><init>()V

    aput-object v4, v3, v0

    const/4 v0, 0x6

    new-instance v4, Lcom/oneplus/camera/ZoomControllerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ZoomControllerBuilder;-><init>()V

    aput-object v4, v3, v0

    sput-object v3, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 56
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v3, Lcom/oneplus/camera/AppTrackerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/AppTrackerBuilder;-><init>()V

    aput-object v3, v0, v2

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryBuilder;

    invoke-direct {v3}, Lcom/oneplus/gallery/CameraGalleryBuilder;-><init>()V

    aput-object v3, v0, v1

    new-instance v3, Lcom/oneplus/camera/ui/CameraPreviewGridBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CameraPreviewGridBuilder;-><init>()V

    aput-object v3, v0, v5

    new-instance v3, Lcom/oneplus/camera/CameraServiceProxyBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/CameraServiceProxyBuilder;-><init>()V

    aput-object v3, v0, v6

    new-instance v3, Lcom/oneplus/camera/ui/CameraSwitchAnimationBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CameraSwitchAnimationBuilder;-><init>()V

    aput-object v3, v0, v7

    const/4 v3, 0x5

    new-instance v4, Lcom/oneplus/camera/ui/CaptureBarBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/CaptureBarBuilder;-><init>()V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/oneplus/camera/capturemode/CaptureModeManagerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/capturemode/CaptureModeManagerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcherBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcherBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/oneplus/camera/CountDownTimerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/CountDownTimerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/oneplus/camera/ui/CountDownTimerIndicatorBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/CountDownTimerIndicatorBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/oneplus/camera/DialogManagerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/DialogManagerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/oneplus/camera/ui/FaceRendererBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/FaceRendererBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/oneplus/camera/FaceTrackerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/FaceTrackerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/oneplus/camera/FlashControllerBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/FlashControllerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/oneplus/camera/ui/FocusExposureIndicatorBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/oneplus/camera/ui/GestureDetectorImplBuilder;

    invoke-direct {v4}, Lcom/oneplus/camera/ui/GestureDetectorImplBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/oneplus/camera/location/LocationManagerBuilder;

    sget v5, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v5, v1, :cond_1

    :goto_1
    invoke-direct {v4, v1}, Lcom/oneplus/camera/location/LocationManagerBuilder;-><init>(Z)V

    aput-object v4, v0, v3

    const/16 v1, 0x11

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/manual/ManualModeUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/oneplus/camera/ui/OnScreenHintBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/OnScreenHintBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/OptionsPanelBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/panorama/PanoramaUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/oneplus/camera/ui/PinchZoomingUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/PinchZoomingUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/oneplus/camera/ui/PreviewCoverBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/PreviewCoverBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/oneplus/camera/ui/ProcessingDialogBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ProcessingDialogBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/RecordingTimerUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ReviewScreenBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/oneplus/camera/scene/SceneManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/scene/SceneManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/SensorFocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/oneplus/camera/ui/ShutterEffectBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ShutterEffectBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/slowmotion/SlowMotionUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/oneplus/camera/ui/SwitchAnimationBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/SwitchAnimationBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ThumbnailBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/oneplus/camera/timelapse/TimelapseUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/timelapse/TimelapseUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/oneplus/camera/ui/ToastManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ToastManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUIBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/TouchFocusExposureUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/oneplus/camera/ui/VideoHintBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/VideoHintBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/oneplus/camera/ui/ZoomBarBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/ZoomBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/oneplus/camera/ZoomControllerBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/ZoomControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void

    :cond_0
    move v0, v2

    .line 45
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto/16 :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
