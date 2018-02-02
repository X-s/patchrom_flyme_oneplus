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

    .line 52
    const/16 v0, 0x8

    new-array v3, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 53
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/media/AudioManagerBuilder;-><init>()V

    aput-object v0, v3, v2

    .line 54
    new-instance v4, Lcom/oneplus/camera/location/LocationManagerBuilder;

    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v4, v0}, Lcom/oneplus/camera/location/LocationManagerBuilder;-><init>(Z)V

    aput-object v4, v3, v1

    .line 55
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/manual/ManualModeControllerBuilder;-><init>()V

    aput-object v0, v3, v5

    .line 56
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;-><init>()V

    aput-object v0, v3, v6

    .line 57
    new-instance v0, Lcom/oneplus/camera/slowmotion/SlowMotionControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/slowmotion/SlowMotionControllerBuilder;-><init>()V

    aput-object v0, v3, v7

    .line 58
    new-instance v0, Lcom/oneplus/camera/timelapse/TimelapseControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/timelapse/TimelapseControllerBuilder;-><init>()V

    const/4 v4, 0x5

    aput-object v0, v3, v4

    .line 59
    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerBuilder;-><init>()V

    const/4 v4, 0x6

    aput-object v0, v3, v4

    .line 60
    new-instance v0, Lcom/oneplus/camera/ZoomControllerBuilder;

    invoke-direct {v0}, Lcom/oneplus/camera/ZoomControllerBuilder;-><init>()V

    const/4 v4, 0x7

    aput-object v0, v3, v4

    .line 52
    sput-object v3, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 64
    const/16 v0, 0x30

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 66
    new-instance v3, Lcom/oneplus/camera/AppTrackerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/AppTrackerBuilder;-><init>()V

    aput-object v3, v0, v2

    .line 67
    new-instance v3, Lcom/oneplus/camera/BacklightBrightnessControllerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/BacklightBrightnessControllerBuilder;-><init>()V

    aput-object v3, v0, v1

    .line 68
    new-instance v3, Lcom/oneplus/gallery/BurstViewerBuilder;

    invoke-direct {v3}, Lcom/oneplus/gallery/BurstViewerBuilder;-><init>()V

    aput-object v3, v0, v5

    .line 69
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryBuilder;

    invoke-direct {v3}, Lcom/oneplus/gallery/CameraGalleryBuilder;-><init>()V

    aput-object v3, v0, v6

    .line 70
    new-instance v3, Lcom/oneplus/camera/ui/CameraPreviewGridBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CameraPreviewGridBuilder;-><init>()V

    aput-object v3, v0, v7

    .line 71
    new-instance v3, Lcom/oneplus/camera/CameraServiceProxyBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/CameraServiceProxyBuilder;-><init>()V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 72
    new-instance v3, Lcom/oneplus/camera/ui/CameraSwitchAnimationBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CameraSwitchAnimationBuilder;-><init>()V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    .line 73
    new-instance v3, Lcom/oneplus/camera/ui/CameraWizardBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CameraWizardBuilder;-><init>()V

    const/4 v4, 0x7

    aput-object v3, v0, v4

    .line 74
    new-instance v3, Lcom/oneplus/camera/ui/CaptureBarBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CaptureBarBuilder;-><init>()V

    const/16 v4, 0x8

    aput-object v3, v0, v4

    .line 75
    new-instance v3, Lcom/oneplus/camera/capturemode/CaptureModeManagerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/capturemode/CaptureModeManagerBuilder;-><init>()V

    const/16 v4, 0x9

    aput-object v3, v0, v4

    .line 76
    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcherBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcherBuilder;-><init>()V

    const/16 v4, 0xa

    aput-object v3, v0, v4

    .line 77
    new-instance v3, Lcom/oneplus/camera/CountDownTimerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/CountDownTimerBuilder;-><init>()V

    const/16 v4, 0xb

    aput-object v3, v0, v4

    .line 78
    new-instance v3, Lcom/oneplus/camera/ui/CountDownTimerIndicatorBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/CountDownTimerIndicatorBuilder;-><init>()V

    const/16 v4, 0xc

    aput-object v3, v0, v4

    .line 79
    new-instance v3, Lcom/oneplus/camera/DialogManagerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/DialogManagerBuilder;-><init>()V

    const/16 v4, 0xd

    aput-object v3, v0, v4

    .line 80
    new-instance v3, Lcom/oneplus/camera/ui/FaceBeautyUIBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/FaceBeautyUIBuilder;-><init>()V

    const/16 v4, 0xe

    aput-object v3, v0, v4

    .line 81
    new-instance v3, Lcom/oneplus/camera/ui/FaceRendererBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/FaceRendererBuilder;-><init>()V

    const/16 v4, 0xf

    aput-object v3, v0, v4

    .line 82
    new-instance v3, Lcom/oneplus/camera/FaceTrackerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/FaceTrackerBuilder;-><init>()V

    const/16 v4, 0x10

    aput-object v3, v0, v4

    .line 83
    new-instance v3, Lcom/oneplus/camera/FlashControllerBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/FlashControllerBuilder;-><init>()V

    const/16 v4, 0x11

    aput-object v3, v0, v4

    .line 84
    new-instance v3, Lcom/oneplus/camera/ui/FocusExposureIndicatorBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/FocusExposureIndicatorBuilder;-><init>()V

    const/16 v4, 0x12

    aput-object v3, v0, v4

    .line 85
    new-instance v3, Lcom/oneplus/camera/ui/GestureDetectorImplBuilder;

    invoke-direct {v3}, Lcom/oneplus/camera/ui/GestureDetectorImplBuilder;-><init>()V

    const/16 v4, 0x13

    aput-object v3, v0, v4

    .line 87
    new-instance v3, Lcom/oneplus/camera/location/LocationManagerBuilder;

    sget v4, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-direct {v3, v1}, Lcom/oneplus/camera/location/LocationManagerBuilder;-><init>(Z)V

    const/16 v1, 0x14

    aput-object v3, v0, v1

    .line 88
    new-instance v1, Lcom/oneplus/camera/ui/LongMediaProcessingUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/LongMediaProcessingUIBuilder;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/manual/ManualModeUIBuilder;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lcom/oneplus/camera/ui/OnScreenHintBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/OnScreenHintBuilder;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 91
    new-instance v1, Lcom/oneplus/camera/ui/OptionsPanelBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/OptionsPanelBuilder;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 92
    new-instance v1, Lcom/oneplus/camera/panorama/PanoramaUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/panorama/PanoramaUIBuilder;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lcom/oneplus/camera/PictureProcessServiceProxyBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/PictureProcessServiceProxyBuilder;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lcom/oneplus/camera/ui/PinchZoomingUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/PinchZoomingUIBuilder;-><init>()V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 95
    new-instance v1, Lcom/oneplus/camera/ui/PreviewCoverBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/PreviewCoverBuilder;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lcom/oneplus/camera/ui/ProcessingDialogBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ProcessingDialogBuilder;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 98
    new-instance v1, Lcom/oneplus/camera/ui/RecordingTimerUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/RecordingTimerUIBuilder;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lcom/oneplus/camera/ui/ReviewScreenBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ReviewScreenBuilder;-><init>()V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 102
    new-instance v1, Lcom/oneplus/camera/scene/SceneManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/scene/SceneManagerBuilder;-><init>()V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 103
    new-instance v1, Lcom/oneplus/camera/ui/SceneToastBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/SceneToastBuilder;-><init>()V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 104
    new-instance v1, Lcom/oneplus/camera/SensorFocusControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/SensorFocusControllerBuilder;-><init>()V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 105
    new-instance v1, Lcom/oneplus/camera/ui/ShutterEffectBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ShutterEffectBuilder;-><init>()V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lcom/oneplus/camera/slowmotion/SlowMotionUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/slowmotion/SlowMotionUIBuilder;-><init>()V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 107
    new-instance v1, Lcom/oneplus/camera/SmileCaptureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/SmileCaptureControllerBuilder;-><init>()V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 108
    new-instance v1, Lcom/oneplus/camera/ui/SwitchAnimationBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/SwitchAnimationBuilder;-><init>()V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 109
    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ThumbnailBarBuilder;-><init>()V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 110
    new-instance v1, Lcom/oneplus/camera/timelapse/TimelapseUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/timelapse/TimelapseUIBuilder;-><init>()V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lcom/oneplus/camera/ui/ToastManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ToastManagerBuilder;-><init>()V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 112
    new-instance v1, Lcom/oneplus/camera/ui/TouchFocusExposureUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUIBuilder;-><init>()V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 113
    new-instance v1, Lcom/oneplus/camera/UnprocessedPictureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/UnprocessedPictureControllerBuilder;-><init>()V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 114
    new-instance v1, Lcom/oneplus/camera/ui/VideoHintBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/VideoHintBuilder;-><init>()V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 115
    new-instance v1, Lcom/oneplus/camera/watermark/WatermarkUIBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/watermark/WatermarkUIBuilder;-><init>()V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 116
    new-instance v1, Lcom/oneplus/camera/ui/ZoomBarBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/ZoomBarBuilder;-><init>()V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 117
    new-instance v1, Lcom/oneplus/camera/ZoomControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ZoomControllerBuilder;-><init>()V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 87
    goto/16 :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
