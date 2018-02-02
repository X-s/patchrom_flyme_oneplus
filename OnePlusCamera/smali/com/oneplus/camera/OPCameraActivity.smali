.class public Lcom/oneplus/camera/OPCameraActivity;
.super Lcom/oneplus/camera/CameraActivity;
.source "OPCameraActivity.java"


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

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

.field private m_CaptureUIContainer:Landroid/view/ViewGroup;

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

    const/16 v2, 0xe

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

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

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
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

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

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

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

    const/16 v2, 0x10

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

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureUIInflated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    .line 77
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PrepareAdvancedSettingActivityExtraBundle"

    const-class v2, Lcom/oneplus/camera/IntentEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    .line 92
    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 103
    sget-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 100
    return-void
.end method

.method private bindAutoTestService(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->fromId(I)Lcom/oneplus/camera/AutoTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 113
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_1

    .line 114
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

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindAutoTestService() - Auto-test service not found"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onBackFromAdvancedSettings(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 202
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    .line 206
    .local v1, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v1}, Lcom/oneplus/camera/media/ResolutionManager;->getPhotoResolutionSettingsKey()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "resolutionSettingsKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 211
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    invoke-virtual {v3, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v0

    .line 212
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v0, :cond_1

    .line 214
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings() - Selected photo resolution : "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 200
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 218
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
    .line 228
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->disableBeam()V

    .line 225
    :goto_0
    return-void

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->enableBeam()V

    goto :goto_0

    .line 228
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

    .line 283
    const/16 v0, 0x271a

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 286
    iget-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 289
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    invoke-virtual {v0, p0}, Lcom/oneplus/camera/AutoTestService;->notifyActivityReady(Lcom/oneplus/camera/OPCameraActivity;)V

    .line 292
    iput-object v4, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 280
    :cond_0
    return-void
.end method

.method private onElapsedRecordingTimeChanged(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 539
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 541
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 542
    .local v0, "maxSeconds":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    .line 537
    .end local v0    # "maxSeconds":J
    :cond_0
    return-void
.end method

.method private onLaunchCompleted()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    .line 573
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 568
    return-void
.end method

.method private prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "agentType"    # I

    .prologue
    .line 609
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 610
    .local v1, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 614
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 615
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 618
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

    .line 630
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 635
    :goto_0
    return-object v1

    .line 621
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/LandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 624
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InversePortraitAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 627
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InverseLandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V
    .locals 8
    .param p1, "captureModeManager"    # Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .prologue
    const/4 v7, 0x0

    .line 643
    const/4 v1, 0x0

    .line 644
    .local v1, "isPhotoCaptureMode":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v3

    .line 645
    .local v3, "startmode":Lcom/oneplus/camera/StartMode;
    if-eqz p1, :cond_0

    .line 647
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 662
    sget-object v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 663
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v5, :cond_1

    .line 668
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 670
    const-class v5, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v2

    .line 671
    .local v2, "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v2, :cond_2

    .line 673
    invoke-interface {p1, v2, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 674
    return-void

    .line 651
    .end local v2    # "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_0
    const/4 v1, 0x1

    .line 652
    goto :goto_0

    .line 654
    :pswitch_1
    const-class v5, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v4

    .line 655
    .local v4, "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v4, :cond_0

    .line 657
    invoke-interface {p1, v4, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 658
    return-void

    .line 664
    .end local v4    # "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    invoke-interface {p1, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->changeToInitialCaptureMode(I)Z

    .line 640
    return-void

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMaxVideoDurationMessage()V
    .locals 9

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 732
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 733
    .local v0, "maxSeconds":J
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 736
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 737
    const v5, 0x7f0b0045

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 744
    .local v4, "resolutionStr":Ljava/lang/String;
    :goto_0
    const v5, 0x7f0b0052

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

    .line 745
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 729
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    const v5, 0x7f0b0044

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 740
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 741
    const v5, 0x7f0b0046

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 743
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showPreviewBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 753
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 754
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPreviewBackground()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBeamUris()[Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-nez v2, :cond_0

    .line 128
    return-object v4

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 132
    .local v1, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 139
    return-object v4

    .line 136
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 137
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    return-object v2

    .line 132
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
    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getSceneManager()Lcom/oneplus/camera/scene/SceneManager;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->handleMessage(Landroid/os/Message;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Remove preview background"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 167
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
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    return-void

    .line 192
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/camera/OPCameraActivity;->onBackFromAdvancedSettings(ILandroid/content/Intent;)V

    goto :goto_0

    .line 189
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
    .line 245
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    :pswitch_0
    const v0, 0x7f0b005a

    .line 272
    .local v0, "messageID":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 275
    .end local v0    # "messageID":I
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 243
    return-void

    .line 251
    :pswitch_1
    const v0, 0x7f0b0055

    .line 252
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 254
    .end local v0    # "messageID":I
    :pswitch_2
    const v0, 0x7f0b0056

    .line 255
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 257
    .end local v0    # "messageID":I
    :pswitch_3
    const v0, 0x7f0b0058

    .line 258
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 260
    .end local v0    # "messageID":I
    :pswitch_4
    const v0, 0x7f0b0059

    .line 261
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 263
    .end local v0    # "messageID":I
    :pswitch_5
    const v0, 0x7f0b005b

    .line 264
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 266
    .end local v0    # "messageID":I
    :pswitch_6
    const v0, 0x7f0b0057

    .line 267
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 248
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
    .line 304
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 307
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 311
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    goto :goto_0

    .line 319
    :pswitch_2
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 323
    :pswitch_3
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 327
    :pswitch_4
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 328
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 339
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 343
    const v10, 0x7f0b005e

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->finish()V

    .line 345
    return-void

    .line 349
    :cond_0
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 355
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$1;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$1;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 366
    const-class v10, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 367
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v1, :cond_1

    .line 369
    const/4 v4, 0x0

    .local v4, "i":I
    sget-object v10, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    array-length v2, v10

    .local v2, "count":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 370
    sget-object v10, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    aget-object v10, v10, v4

    invoke-interface {v1, v10, v13}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addBuilder(Lcom/oneplus/camera/capturemode/CaptureModeBuilder;I)Z

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onCreate() - No CaptureModeManager"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_2
    if-eqz v1, :cond_3

    .line 377
    invoke-direct {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V

    .line 381
    :cond_3
    new-instance v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    invoke-direct {v5}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;-><init>()V

    .line 382
    .local v5, "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 383
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v10, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 384
    const v10, 0x7f060004

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    .line 385
    const v10, 0x7f060005

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    .line 386
    const v10, 0x7f060006

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    .line 387
    const v10, 0x7f060003

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    .line 388
    const v10, 0x7f060002

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    .line 389
    const/high16 v10, 0x7f060000

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    .line 390
    const v10, 0x7f060001

    iput v10, v5, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    .line 391
    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraThread;->setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V

    .line 392
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraThread;->start(Lcom/oneplus/camera/media/MediaType;)V

    .line 395
    const-class v10, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 396
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v10, :cond_4

    .line 398
    const/4 v4, 0x0

    .restart local v4    # "i":I
    sget-object v10, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    array-length v2, v10

    .restart local v2    # "count":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 399
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    aget-object v11, v11, v4

    invoke-interface {v10, v11, v13}, Lcom/oneplus/camera/scene/SceneManager;->addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_4
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onCreate() - No SceneManager interface"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_5
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$2;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$2;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 416
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$3;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$3;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 427
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 428
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 429
    .local v9, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v10, 0x2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 430
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 433
    const v10, 0x7f0b0096

    iput v10, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageToast:I

    .line 434
    const v10, 0x7f0b0097

    iput v10, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageStopRecordToast:I

    .line 437
    const v10, 0x7f030006

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->setContentView(I)V

    .line 440
    const v10, 0x7f090020

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceView;

    iput-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    .line 441
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v10, :cond_6

    .line 443
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v10}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 444
    .local v7, "surfaceHolder":Landroid/view/SurfaceHolder;
    new-instance v10, Lcom/oneplus/camera/OPCameraActivity$4;

    invoke-direct {v10, p0}, Lcom/oneplus/camera/OPCameraActivity$4;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-interface {v7, v10}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 465
    .end local v7    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_6
    const-class v10, Lcom/oneplus/camera/ui/CameraGallery;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$5;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$5;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-static {p0, v10, p0, v11}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 483
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/base/Settings;

    const-string/jumbo v11, "IsH2PermissionsRequested"

    invoke-virtual {v10, v11, v13}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 336
    :cond_7
    :goto_2
    return-void

    .line 485
    :cond_8
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/base/Settings;

    const-string/jumbo v11, "Location.Save"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    sget-object v10, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 487
    .local v6, "rotationLockHandle":Lcom/oneplus/base/Handle;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    const v11, 0x7f0b0037

    .line 487
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 489
    const v11, 0x7f030008

    .line 487
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 491
    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$6;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$6;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    const v12, 0x104000a

    .line 487
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 501
    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$7;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$7;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    const/high16 v12, 0x1040000

    .line 487
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 510
    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$8;

    invoke-direct {v11, p0, v6}, Lcom/oneplus/camera/OPCameraActivity$8;-><init>(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/base/Handle;)V

    .line 487
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 519
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 529
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onDestroy()V

    .line 532
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V

    .line 526
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 555
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 561
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 562
    .local v0, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V

    .line 549
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 583
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 584
    .local v0, "boundBottom":I
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 585
    .local v1, "boundTop":I
    if-lez v1, :cond_0

    .line 586
    add-int/2addr v0, v1

    .line 587
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

    .line 588
    .local v2, "buounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v3

    .line 589
    .local v3, "viewFinder":Lcom/oneplus/camera/ui/Viewfinder;
    invoke-interface {v3, v2, v8}, Lcom/oneplus/camera/ui/Viewfinder;->setPreferredPreviewBounds(Landroid/graphics/RectF;I)V

    .line 592
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onResume()V

    .line 580
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showPreviewBackground()V

    .line 601
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onStop()V

    .line 598
    return-void
.end method

.method public final showAdvancedSettings()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 692
    :try_start_0
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    .line 693
    .local v5, "settings":Lcom/oneplus/base/Settings;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/IntentEventArgs;

    invoke-direct {v7, v2}, Lcom/oneplus/camera/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/OPCameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 697
    const-string/jumbo v6, "Settings.Name"

    invoke-virtual {v5}, Lcom/oneplus/base/Settings;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string/jumbo v6, "Settings.IsVolatile"

    invoke-virtual {v5}, Lcom/oneplus/base/Settings;->isVolatile()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    const-string/jumbo v6, "StartMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 700
    const-string/jumbo v6, "IsServiceMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->isServiceMode()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 702
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 703
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v6, v7, :cond_1

    .line 704
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 702
    if-eqz v6, :cond_1

    .line 706
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/MediaType;

    .line 707
    .local v3, "mediaType":Lcom/oneplus/camera/media/MediaType;
    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 708
    :cond_0
    const-string/jumbo v6, "IsMirrorSupported"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    .end local v3    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v4

    .line 711
    .local v4, "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 712
    const-string/jumbo v6, "OutputUri"

    iget-object v7, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    :cond_2
    const/16 v6, 0x3e8

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    return v8

    .line 718
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    .end local v5    # "settings":Lcom/oneplus/base/Settings;
    :catch_0
    move-exception v1

    .line 719
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "showAdvancedSettings() - Fail to start activity"

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    const/4 v6, 0x0

    return v6
.end method

.method public startActivityByAgent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 769
    const-string/jumbo v0, "CameraActivity.InstanceId"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 771
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->overridePendingTransition(II)V

    .line 767
    return-void
.end method

.method public startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 783
    const-string/jumbo v1, "CameraActivity.InstanceId"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 785
    .local v0, "handle":Lcom/oneplus/base/Handle;
    const/high16 v1, 0x7f040000

    const v2, 0x7f040001

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->overridePendingTransition(II)V

    .line 786
    return-object v0
.end method
