.class public Lcom/oneplus/camera/OPCameraActivity;
.super Lcom/oneplus/camera/CameraActivity;
.source "OPCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/OPCameraActivity$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-StartModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I = null

.field private static final DURATION_REMOVE_PREVIEW_BACKGROUND_DELAY:J = 0x3e8L

.field public static final EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_AUTO_TEST_SERVICE_ID:Ljava/lang/String; = "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

.field private static final MSG_REMOVE_PREVIEW_BACKGROUND:I = 0x271a

.field public static final PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE_ADV_SETTINGS:I = 0x3e8

.field private static final SETTINGS_KEY_H2_PREMISSIONS_REQUESTED:Ljava/lang/String; = "IsH2PermissionsRequested"


# instance fields
.field private m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

.field private m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

.field private m_CameraInfoView:Landroid/widget/TextView;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureUIContainer:Landroid/view/ViewGroup;

.field private m_DebugModeCameraCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsFirstCameraPreviewReceived:Z

.field private m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

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

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

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

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_CALL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_COMMUNICATION:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-StartModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

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

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_BOKEH:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_MANUAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery;)Lcom/oneplus/camera/ui/CameraGallery;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPCameraActivity;->onCameraGalleryStateChanged(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->onCameraPreviewReceived()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/OPCameraActivity;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/OPCameraActivity;->onElapsedRecordingTimeChanged(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->onLaunchCompleted()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->updateCameraInfoText()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureUIInflated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    .line 79
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PrepareAdvancedSettingActivityExtraBundle"

    const-class v2, Lcom/oneplus/camera/IntentEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    .line 107
    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 94
    new-instance v0, Lcom/oneplus/camera/OPCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPCameraActivity$1;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_DebugModeCameraCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 118
    sget-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 115
    return-void
.end method

.method private bindAutoTestService(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->fromId(I)Lcom/oneplus/camera/AutoTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindAutoTestService() - Bind auto-test service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindAutoTestService() - Auto-test service not found"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private linkToCaptureModeManager()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_0

    .line 205
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 206
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onBackFromAdvancedSettings(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    .line 234
    .local v1, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v1}, Lcom/oneplus/camera/media/ResolutionManager;->getPhotoResolutionSettingsKey()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "resolutionSettingsKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 239
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    invoke-virtual {v3, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v0

    .line 240
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v0, :cond_1

    .line 242
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings() - Selected photo resolution : "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 228
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings() - No selected photo resolution"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraGalleryStateChanged(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    .line 256
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->disableBeam()V

    .line 253
    :goto_0
    return-void

    .line 260
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->enableBeam()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraPreviewReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 311
    const/16 v0, 0x271a

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 314
    iget-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    invoke-virtual {v0, p0}, Lcom/oneplus/camera/AutoTestService;->notifyActivityReady(Lcom/oneplus/camera/OPCameraActivity;)V

    .line 320
    iput-object v4, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 308
    :cond_0
    return-void
.end method

.method private onElapsedRecordingTimeChanged(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 607
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 609
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 610
    .local v0, "maxSeconds":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    .line 605
    .end local v0    # "maxSeconds":J
    :cond_0
    return-void
.end method

.method private onLaunchCompleted()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    .line 639
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method private prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "agentType"    # I

    .prologue
    .line 675
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 676
    .local v1, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 680
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 681
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 696
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 701
    :goto_0
    return-object v1

    .line 687
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/LandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 690
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InversePortraitAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 693
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InverseLandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInitCaptureMode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 726
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->linkToCaptureModeManager()Z

    move-result v7

    if-nez v7, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    const/4 v2, 0x0

    .line 731
    .local v2, "isPhotoCaptureMode":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v5

    .line 732
    .local v5, "startmode":Lcom/oneplus/camera/StartMode;
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 780
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v8, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 781
    .local v1, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v7, Lcom/oneplus/camera/OPCameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    instance-of v7, v1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v7, :cond_5

    .line 786
    .end local v1    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 788
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v8, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v4

    .line 789
    .local v4, "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v4, :cond_6

    .line 791
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v7, v4, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 792
    return-void

    .line 738
    .end local v4    # "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_0
    const/4 v2, 0x1

    .line 739
    goto :goto_0

    .line 744
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v8, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v6

    .line 745
    .local v6, "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v6, :cond_2

    .line 747
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v7, v6, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 748
    return-void

    .line 751
    :cond_2
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setInitCaptureMode() - Cannot find video capture mode"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    .end local v6    # "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_2
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v8, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v0

    .line 757
    .local v0, "bokehMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v0, :cond_3

    .line 759
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v7, v0, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 760
    return-void

    .line 763
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setInitCaptureMode() - Cannot find bokeh capture mode"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v0    # "bokehMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_3
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v8, Lcom/oneplus/camera/manual/ManualCaptureMode;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v3

    .line 769
    .local v3, "manualMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v3, :cond_4

    .line 771
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v7, v3, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 772
    return-void

    .line 775
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setInitCaptureMode() - Cannot find manual capture mode"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    .end local v3    # "manualMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v1    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v7, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->changeToInitialCaptureMode(I)Z

    .line 723
    return-void

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showMaxVideoDurationMessage()V
    .locals 9

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 852
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 853
    .local v0, "maxSeconds":J
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 856
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 857
    const v5, 0x7f0d006c

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "resolutionStr":Ljava/lang/String;
    :goto_0
    const v5, 0x7f0d0079

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {p0, v0, v1}, Lcom/oneplus/camera/util/StringUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 849
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 859
    const v5, 0x7f0d006b

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 860
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 861
    const v5, 0x7f0d006d

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 863
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showPreviewBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 873
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 874
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPreviewBackground()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 871
    :cond_0
    return-void
.end method

.method private updateCameraInfoText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 908
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 914
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 916
    const v3, 0x7f0a00a8

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    .line 917
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 918
    return-void

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 911
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    :cond_1
    return-void

    .line 920
    :cond_2
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 921
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_3

    .line 922
    return-void

    .line 924
    :cond_3
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 948
    return-void

    .line 928
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 929
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 930
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v1, v3, v6}, Lcom/oneplus/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 932
    const v3, 0x7f0d00bf

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    .end local v1    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .local v2, "lensFacingStr":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const v5, 0x7f0d00bd

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/OPCameraActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    return-void

    .line 935
    .end local v2    # "lensFacingStr":Ljava/lang/String;
    .restart local v1    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :cond_4
    const v3, 0x7f0d00be

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lensFacingStr":Ljava/lang/String;
    goto :goto_0

    .line 939
    .end local v1    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v2    # "lensFacingStr":Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f0d00c0

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lensFacingStr":Ljava/lang/String;
    goto :goto_0

    .line 942
    .end local v2    # "lensFacingStr":Ljava/lang/String;
    :pswitch_2
    const v3, 0x7f0d00c1

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lensFacingStr":Ljava/lang/String;
    goto :goto_0

    .line 945
    .end local v2    # "lensFacingStr":Ljava/lang/String;
    :pswitch_3
    const v3, 0x7f0d00c2

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lensFacingStr":Ljava/lang/String;
    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getBeamUris()[Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-nez v2, :cond_0

    .line 143
    return-object v4

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 147
    .local v1, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 154
    return-object v4

    .line 151
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 152
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    return-object v2

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getCaptureUIContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getSceneManager()Lcom/oneplus/camera/scene/SceneManager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->handleMessage(Landroid/os/Message;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Remove preview background"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    return-void

    .line 220
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/camera/OPCameraActivity;->onBackFromAdvancedSettings(ILandroid/content/Intent;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 273
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 297
    :pswitch_0
    const v0, 0x7f0d0082

    .line 300
    .local v0, "messageID":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    .end local v0    # "messageID":I
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 271
    return-void

    .line 279
    :pswitch_1
    const v0, 0x7f0d007d

    .line 280
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 282
    .end local v0    # "messageID":I
    :pswitch_2
    const v0, 0x7f0d007e

    .line 283
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 285
    .end local v0    # "messageID":I
    :pswitch_3
    const v0, 0x7f0d0080

    .line 286
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 288
    .end local v0    # "messageID":I
    :pswitch_4
    const v0, 0x7f0d0081

    .line 289
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 291
    .end local v0    # "messageID":I
    :pswitch_5
    const v0, 0x7f0d0083

    .line 292
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 294
    .end local v0    # "messageID":I
    :pswitch_6
    const v0, 0x7f0d007f

    .line 295
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 335
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 338
    :pswitch_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 339
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    goto :goto_0

    .line 347
    :pswitch_2
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 351
    :pswitch_3
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 356
    :pswitch_4
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 357
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 361
    :pswitch_5
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 362
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 375
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 377
    const v9, 0x7f0d0086

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 378
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->finish()V

    .line 379
    return-void

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 389
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$2;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$2;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 402
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->onDebugModeEnabled()V

    .line 406
    :cond_1
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$3;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$3;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->linkToCaptureModeManager()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 421
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v9, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    array-length v1, v9

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 422
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v10, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    aget-object v10, v10, v3

    invoke-interface {v9, v10, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addBuilder(Lcom/oneplus/camera/capturemode/CaptureModeBuilder;I)Z

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode()V

    .line 431
    .end local v1    # "count":I
    .end local v3    # "i":I
    :goto_1
    new-instance v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    invoke-direct {v4}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;-><init>()V

    .line 432
    .local v4, "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 433
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v9, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {v0, v9}, Lcom/oneplus/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 434
    const v9, 0x7f070004

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    .line 435
    const v9, 0x7f070005

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    .line 436
    const v9, 0x7f070006

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    .line 437
    const v9, 0x7f070003

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    .line 438
    const v9, 0x7f070002

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    .line 439
    const/high16 v9, 0x7f070000

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    .line 440
    const v9, 0x7f070001

    iput v9, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    .line 441
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraThread;->setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V

    .line 442
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v9}, Lcom/oneplus/camera/CameraThread;->start(Lcom/oneplus/camera/media/MediaType;)V

    .line 445
    const-class v9, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 446
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v9, :cond_4

    .line 448
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v9, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    array-length v1, v9

    .restart local v1    # "count":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 449
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v10, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    aget-object v10, v10, v3

    invoke-interface {v9, v10, v12}, Lcom/oneplus/camera/scene/SceneManager;->addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 428
    .end local v0    # "cameraThread":Lcom/oneplus/camera/CameraThread;
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :cond_3
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onCreate() - Cannot link to capture mode manager"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    .restart local v0    # "cameraThread":Lcom/oneplus/camera/CameraThread;
    .restart local v4    # "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :cond_4
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onCreate() - No SceneManager interface"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_5
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$4;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$4;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 466
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$5;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$5;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 479
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 480
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 481
    .local v8, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 482
    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 485
    const v9, 0x7f0d00c5

    iput v9, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageToast:I

    .line 486
    const v9, 0x7f0d00c6

    iput v9, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageStopRecordToast:I

    .line 489
    const v9, 0x7f030007

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->setContentView(I)V

    .line 492
    const v9, 0x7f0a0023

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceView;

    iput-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    .line 493
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v9, :cond_6

    .line 495
    iget-object v9, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    .line 496
    .local v6, "surfaceHolder":Landroid/view/SurfaceHolder;
    new-instance v9, Lcom/oneplus/camera/OPCameraActivity$6;

    invoke-direct {v9, p0}, Lcom/oneplus/camera/OPCameraActivity$6;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-interface {v6, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 517
    .end local v6    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_6
    const-class v9, Lcom/oneplus/camera/ui/CameraGallery;

    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$7;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$7;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-static {p0, v9, p0, v10}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 535
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/base/Settings;

    const-string/jumbo v10, "IsH2PermissionsRequested"

    invoke-virtual {v9, v10, v12}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 370
    :cond_7
    :goto_3
    return-void

    .line 537
    :cond_8
    sget-object v9, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/base/Settings;

    const-string/jumbo v10, "Location.Save"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    sget-object v9, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v9}, Lcom/oneplus/camera/OPCameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v5

    .line 539
    .local v5, "rotationLockHandle":Lcom/oneplus/base/Handle;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v10, 0x7f0d005e

    .line 539
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 541
    const v10, 0x7f030009

    .line 539
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 543
    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$8;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$8;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    const v11, 0x104000a

    .line 539
    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 553
    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$9;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$9;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    const/high16 v11, 0x1040000

    .line 539
    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 562
    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$10;

    invoke-direct {v10, p0, v5}, Lcom/oneplus/camera/OPCameraActivity$10;-><init>(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/base/Handle;)V

    .line 539
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 571
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_3
.end method

.method protected onDebugModeDisabled()V
    .locals 2

    .prologue
    .line 579
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_DebugModeCameraCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 580
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->updateCameraInfoText()V

    .line 577
    return-void
.end method

.method protected onDebugModeEnabled()V
    .locals 2

    .prologue
    .line 587
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_DebugModeCameraCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 588
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->updateCameraInfoText()V

    .line 585
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onDestroy()V

    .line 600
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V

    .line 594
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 623
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 626
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 629
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode()V

    .line 617
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090145

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 650
    .local v0, "boundBottom":I
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 651
    .local v1, "boundTop":I
    if-lez v1, :cond_0

    .line 652
    add-int/2addr v0, v1

    .line 653
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    const/4 v5, 0x0

    int-to-float v6, v1

    sget-object v4, Lcom/oneplus/camera/OPCameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v7, v0

    invoke-direct {v2, v5, v6, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 654
    .local v2, "buounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v3

    .line 655
    .local v3, "viewFinder":Lcom/oneplus/camera/ui/Viewfinder;
    invoke-interface {v3, v2, v8}, Lcom/oneplus/camera/ui/Viewfinder;->setPreferredPreviewBounds(Landroid/graphics/RectF;I)V

    .line 658
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onResume()V

    .line 646
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showPreviewBackground()V

    .line 667
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onStop()V

    .line 664
    return-void
.end method

.method public setDebugMode(Z)Z
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 710
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    if-eqz p1, :cond_0

    .line 713
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    .line 716
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 715
    :cond_0
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 718
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final showAdvancedSettings()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 811
    :try_start_0
    sget-object v7, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/Settings;

    .line 812
    .local v6, "settings":Lcom/oneplus/base/Settings;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    .local v4, "intent":Landroid/content/Intent;
    sget-object v7, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/IntentEventArgs;

    invoke-direct {v8, v4}, Lcom/oneplus/camera/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/OPCameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 816
    const-string/jumbo v7, "Settings.Name"

    invoke-virtual {v6}, Lcom/oneplus/base/Settings;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string/jumbo v7, "Settings.IsVolatile"

    invoke-virtual {v6}, Lcom/oneplus/base/Settings;->isVolatile()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    const-string/jumbo v7, "StartMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 819
    const-string/jumbo v7, "IsServiceMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->isServiceMode()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    sget-object v7, Lcom/oneplus/camera/OPCameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 821
    .local v0, "availableCameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "camera$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    .line 823
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 825
    const-string/jumbo v7, "IsMirrorSupported"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    .end local v1    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v5

    .line 831
    .local v5, "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v5, :cond_2

    iget-object v7, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v7, :cond_2

    .line 832
    const-string/jumbo v7, "OutputUri"

    iget-object v8, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :cond_2
    const/16 v7, 0x3e8

    invoke-virtual {p0, v4, v7}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return v9

    .line 838
    .end local v0    # "availableCameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v2    # "camera$iterator":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    .end local v6    # "settings":Lcom/oneplus/base/Settings;
    :catch_0
    move-exception v3

    .line 839
    .local v3, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v7, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showAdvancedSettings() - Fail to start activity"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 840
    const/4 v7, 0x0

    return v7
.end method

.method public startActivityByAgent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 889
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 887
    return-void
.end method

.method public startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
