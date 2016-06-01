.class public final Lcom/oneplus/camera/panorama/PanoramaUI;
.super Lcom/oneplus/camera/ModeUI;
.source "PanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/panorama/PanoramaUI$11;,
        Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeUI",
        "<",
        "Lcom/oneplus/camera/panorama/PanoramaController;",
        ">;"
    }
.end annotation


# static fields
.field private static final FUNC_KILL_START_HINT:I = 0x2

.field private static final FUNC_SHOW_START_HINT:I = 0x1

.field private static final MAX_PHOTO_SIDE:I = 0x780

.field private static final MAX_PREVIEW_SIDE:I = 0x780

.field static final MSG_CAPTURE_COMPLETED:I = 0x2714

.field static final MSG_CAPTURE_STARTED:I = 0x2710

.field private static final MSG_CLOSE_START_HINT:I = 0x2726

.field static final MSG_DISPLACEMENT_CHANGED:I = 0x2724

.field static final MSG_FRAME_ADD_FAILED:I = 0x2712

.field static final MSG_MOVING_SPEED_CHANGED:I = 0x2725

.field static final MSG_PREVIEW_FRAME_RECEIVED:I = 0x271b

.field static final MSG_RESULT_SIZE_CHANGED:I = 0x2711

.field static final MSG_STITCHING:I = 0x2713

.field static final MSG_YUV_TO_BMP_CONVERTER_CREATED:I = 0x271a

.field public static final PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_BaseView:Landroid/view/View;

.field private m_BlackSolidPaint:Landroid/graphics/Paint;

.field private m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureControlPanel:Lcom/oneplus/camera/ui/CaptureControlPanel;

.field private m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CurrentFrame:Landroid/view/View;

.field private m_CurrentFrameThickness:I

.field private m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

.field private m_DirIndicatorsContainer:Landroid/view/ViewGroup;

.field private m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

.field private m_Direction:I

.field private m_Displacement:I

.field private m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

.field private m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_HintHandle:Lcom/oneplus/base/Handle;

.field private m_IsControllerCaptureStarted:Z

.field private m_IsMovingTooFast:Z

.field private m_LastFrameAddFailedResult:I

.field private m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewFrameView:Landroid/widget/ImageView;

.field private m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewThumbContainer:Landroid/view/View;

.field private m_PreviewThumbHeight:I

.field private m_PreviewThumbView:Landroid/widget/ImageView;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ResolutionSelector:Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

.field private m_RotationLockHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private final m_SensorEventListener:Landroid/hardware/SensorEventListener;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_StartHintHandle:Lcom/oneplus/base/Handle;

.field private m_TargetHeight:I

.field private m_TargetWidth:I

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "LastFrameAddResult"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    .line 77
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsStoppedByUser"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    .line 79
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PanoramaCaptureLength"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/panorama/PanoramaUI;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "Panorama UI"

    const-class v1, Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 110
    const/16 v0, 0x11

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Direction:I

    .line 115
    iput v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 128
    iput v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    .line 182
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$1;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/panorama/PanoramaUI;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureControlPanel;)Lcom/oneplus/camera/ui/CaptureControlPanel;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureControlPanel;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/oneplus/camera/ui/CaptureControlPanel;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->setupUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/panorama/PanoramaUI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateStartHint(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->completeCapture()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/OnScreenHint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->setupCaptureButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onCaptureButtonPressed(Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onCaptureButtonReleased(Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/camera/media/ResolutionManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method private completeCapture()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 206
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "completeCapture()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 213
    .local v0, "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    iput-object v6, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 214
    iput-object v6, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    .line 215
    iput-boolean v7, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    .line 218
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 221
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 222
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 223
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-static {v3, v7, v7, v7, v7}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 226
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5, v7}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 229
    .local v2, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 230
    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 234
    .end local v2    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 236
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 244
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 247
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_5

    .line 248
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 251
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/camera/CameraActivity;->completeCapture(Lcom/oneplus/camera/CaptureHandle;)V

    .line 252
    return-void
.end method

.method private onCaptureButtonPressed(Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->setHandled()V

    .line 343
    :cond_0
    return-void
.end method

.method private onCaptureButtonReleased(Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isCaptureUIEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 371
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->setHandled()V

    goto :goto_0

    .line 355
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 359
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Fail to capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->setHandled()V

    goto :goto_0

    .line 362
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-eqz v0, :cond_4

    .line 364
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->stopCapture(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 371
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->setHandled()V

    throw v0

    .line 367
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Capture is not started in controller yet"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private onCaptureCompleted(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->completeCapture()V

    .line 381
    return-void
.end method

.method private onCaptureStarted(II)V
    .locals 11
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    iput p2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetWidth:I

    .line 391
    iput p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetHeight:I

    .line 400
    :goto_0
    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    if-nez v4, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v2

    .line 403
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetWidth:I

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetHeight:I

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    invoke-static {v4, v5, v6, v7, v9}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 406
    .local v3, "thumbSize":Landroid/util/Size;
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - Create preview thumbnail, size : "

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v4, v10}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 418
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-virtual {p0, v4, v10}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 421
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v4, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 423
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 424
    .local v1, "gyroscope":Landroid/hardware/Sensor;
    if-eqz v1, :cond_4

    .line 425
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v1, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 430
    :goto_2
    iput v9, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 431
    iput-boolean v9, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    .line 432
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    .line 433
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 434
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 435
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 436
    iput-boolean v10, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    .line 439
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateHint()V

    .line 440
    return-void

    .line 395
    .end local v1    # "gyroscope":Landroid/hardware/Sensor;
    .end local v2    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v3    # "thumbSize":Landroid/util/Size;
    :cond_3
    iput p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetWidth:I

    .line 396
    iput p2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetHeight:I

    goto/16 :goto_0

    .line 409
    .restart local v2    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .restart local v3    # "thumbSize":Landroid/util/Size;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - Fail to create preview thumbnail bitmap"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 427
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "gyroscope":Landroid/hardware/Sensor;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - No gyroscope on this device"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onDisplacementChanged(I)V
    .locals 7
    .param p1, "displacement"    # I

    .prologue
    .line 461
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v3, "onDisplacementChanged() - "

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " -> "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    iput p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "rotation":I
    sparse-switch p1, :sswitch_data_0

    .line 476
    const/4 v1, 0x0

    .line 481
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateHint()V

    .line 484
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 486
    if-nez v1, :cond_0

    .line 488
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 489
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 488
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 470
    .end local v0    # "i":I
    :sswitch_0
    const/16 v1, 0xa

    .line 471
    goto :goto_0

    .line 473
    :sswitch_1
    const/16 v1, -0xa

    .line 474
    goto :goto_0

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 494
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 497
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 501
    .end local v0    # "i":I
    .end local v1    # "rotation":I
    :cond_2
    return-void

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private onFrameAddFailed(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    .line 720
    return-void
.end method

.method private onMovingSpeedChanged(Z)V
    .locals 2
    .param p1, "moveTooFast"    # Z

    .prologue
    .line 830
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onMovingSpeedChanged() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    .line 838
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateHint()V

    goto :goto_0
.end method

.method private onPreviewFrameReceived(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 846
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 851
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 856
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method private onResultSizeChanged(IIFFLandroid/graphics/Bitmap;)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "corrX"    # F
    .param p4, "corrY"    # F
    .param p5, "newAddedFrame"    # Landroid/graphics/Bitmap;

    .prologue
    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    move/from16 v15, p1

    .line 868
    .local v15, "temp":I
    move/from16 p1, p2

    .line 869
    move/from16 p2, v15

    .line 872
    .end local v15    # "temp":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onResultSizeChanged() - width : "

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", target width : "

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 875
    const/4 v14, 0x0

    .line 876
    .local v14, "stopCapture":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    if-eqz p5, :cond_3

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 880
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 883
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 884
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Direction:I

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_TargetWidth:I

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 890
    .local v13, "scale":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 891
    .local v9, "frameWidth":I
    int-to-float v3, v9

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    div-float/2addr v3, v13

    float-to-int v3, v3

    add-int p1, p1, v3

    .line 892
    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 893
    .local v12, "right":I
    sub-int v10, v12, v9

    .line 896
    .local v10, "left":I
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 897
    .local v11, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 898
    int-to-float v3, v12

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 899
    int-to-float v3, v10

    const/4 v4, 0x0

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 900
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrameThickness:I

    sub-int v5, v10, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v12, v3, :cond_5

    const/4 v14, 0x1

    .line 903
    :goto_0
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v12, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 909
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 913
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "frameWidth":I
    .end local v10    # "left":I
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "right":I
    .end local v13    # "scale":F
    :cond_3
    if-eqz v14, :cond_4

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onResultSizeChanged() - Target size reached, stop capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->stopCapture(Z)V

    .line 919
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    return-void

    .line 902
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "frameWidth":I
    .restart local v10    # "left":I
    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    .restart local v12    # "right":I
    .restart local v13    # "scale":F
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 903
    :cond_6
    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    goto :goto_1
.end method

.method private onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x0

    .line 926
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .line 927
    .local v0, "values":[F
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v1

    const/16 v2, 0x2724

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 928
    return-void
.end method

.method private onStitching(Z)V
    .locals 7
    .param p1, "causedByError"    # Z

    .prologue
    const/4 v6, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v3, "onStitching() - Not entered"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    if-eqz p1, :cond_2

    .line 945
    iget-boolean v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_6

    .line 947
    const v0, 0x7f09001e

    .line 948
    .local v0, "messageId":I
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    const/16 v3, -0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 969
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 973
    .end local v0    # "messageId":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 976
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 979
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 982
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v2, :cond_3

    .line 984
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 985
    .local v1, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 986
    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 990
    .end local v1    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v2, :cond_4

    .line 991
    const-class v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 992
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v2, :cond_5

    .line 993
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 996
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const-string v3, "PanoramaStitch"

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 952
    :cond_6
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 953
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    packed-switch v2, :pswitch_data_0

    .line 965
    const v0, 0x7f09001a

    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 956
    .end local v0    # "messageId":I
    :pswitch_0
    const v0, 0x7f090018

    .line 957
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 959
    .end local v0    # "messageId":I
    :pswitch_1
    const v0, 0x7f09001e

    .line 960
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 962
    .end local v0    # "messageId":I
    :pswitch_2
    const v0, 0x7f090021

    .line 963
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 953
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupCaptureButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1004
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/oneplus/camera/ui/CaptureControlPanel;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/oneplus/camera/ui/CaptureControlPanel;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    invoke-interface {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureControlPanel;->setPanelStyle(Lcom/oneplus/camera/ui/CaptureControlPanel$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 1008
    :cond_1
    return-void
.end method

.method private setupUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1015
    const/16 v1, 0x1388

    invoke-direct {p0, v3, v1, v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateStartHint(IIZ)V

    .line 1018
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1021
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v2, "setupUI()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    .line 1030
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    .line 1031
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    .line 1032
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    .line 1033
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    .line 1034
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    .line 1037
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1038
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1039
    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

    .line 1042
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CurrentFrameThickness:I

    .line 1043
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private stopCapture(Z)V
    .locals 6
    .param p1, "stitch"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1052
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1053
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Not capturing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_2

    .line 1062
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCapture() - Photo capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopCapture() - Stitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1070
    const-string v1, "PanoramaStop"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1073
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v3

    const/16 v4, 0x2711

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateHint()V
    .locals 7

    .prologue
    const v6, 0x7f09001b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1080
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v2, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1084
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 1087
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v2, :cond_2

    .line 1088
    const/16 v2, 0x1388

    invoke-direct {p0, v4, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateStartHint(II)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_3

    .line 1091
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    const v4, 0x7f09001d

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1092
    :cond_3
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    if-eqz v2, :cond_4

    .line 1095
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Displacement:I

    sparse-switch v2, :sswitch_data_0

    .line 1104
    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, "hint":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v2, v3, v1, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1098
    .end local v1    # "hint":Ljava/lang/String;
    :sswitch_0
    const v2, 0x7f09001c

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .restart local v1    # "hint":Ljava/lang/String;
    goto :goto_1

    .line 1101
    .end local v1    # "hint":Ljava/lang/String;
    :sswitch_1
    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1102
    .restart local v1    # "hint":Ljava/lang/String;
    goto :goto_1

    .line 1110
    .end local v1    # "hint":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1095
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateStartHint(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->updateStartHint(IIZ)V

    .line 1118
    return-void
.end method

.method private updateStartHint(IIZ)V
    .locals 4
    .param p1, "func"    # I
    .param p2, "timeout"    # I
    .param p3, "isForced"    # Z

    .prologue
    const/16 v3, 0x2726

    .line 1122
    packed-switch p1, :pswitch_data_0

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1124
    :pswitch_0
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1125
    const-wide/16 v0, 0x0

    invoke-static {p0, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 1129
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 1131
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1132
    int-to-long v0, p2

    invoke-static {p0, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 1122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :pswitch_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->handleMessage(Landroid/os/Message;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->onCaptureCompleted(I)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onCaptureStarted(II)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->onDisplacementChanged(I)V

    goto :goto_0

    .line 274
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->onFrameAddFailed(I)V

    goto :goto_0

    .line 278
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->onMovingSpeedChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 283
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .line 284
    .local v5, "frame":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 288
    :try_start_0
    invoke-direct {p0, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->onPreviewFrameReceived(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    throw v0

    .line 301
    .end local v5    # "frame":Landroid/graphics/Bitmap;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 302
    .local v6, "args":[Ljava/lang/Object;
    aget-object v5, v6, v1

    check-cast v5, Landroid/graphics/Bitmap;

    .line 303
    .restart local v5    # "frame":Landroid/graphics/Bitmap;
    aget-object v0, v6, v2

    check-cast v0, [F

    move-object v7, v0

    check-cast v7, [F

    .line 306
    .local v7, "corrections":[F
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x0

    aget v3, v7, v0

    const/4 v0, 0x1

    aget v4, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->onResultSizeChanged(IIFFLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 310
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 311
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    throw v0

    .line 317
    .end local v5    # "frame":Landroid/graphics/Bitmap;
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v7    # "corrections":[F
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onStitching(Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 321
    :pswitch_9
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    goto/16 :goto_0

    .line 326
    :pswitch_a
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method protected bridge synthetic onControllerLinked(Lcom/oneplus/camera/ModeController;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/camera/ModeController;

    .prologue
    .line 72
    check-cast p1, Lcom/oneplus/camera/panorama/PanoramaController;

    .end local p1    # "x0":Lcom/oneplus/camera/ModeController;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->onControllerLinked(Lcom/oneplus/camera/panorama/PanoramaController;)V

    return-void
.end method

.method protected onControllerLinked(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 4
    .param p1, "controller"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x271a

    .line 447
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p1, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 454
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onControllerLinked(Lcom/oneplus/camera/ModeController;)V

    .line 455
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x271a

    const/4 v3, 0x0

    .line 509
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 671
    :goto_0
    return v2

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 514
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onEnter() - Fail to change to photo mode"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 517
    goto :goto_0

    .line 521
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/oneplus/camera/ui/CaptureControlPanel;

    if-nez v2, :cond_2

    .line 523
    const-class v2, Lcom/oneplus/camera/ui/CaptureControlPanel;

    new-instance v4, Lcom/oneplus/camera/panorama/PanoramaUI$2;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$2;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v2, :cond_3

    .line 536
    const-class v2, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v4, Lcom/oneplus/camera/panorama/PanoramaUI$3;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$3;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 563
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v2, :cond_4

    .line 564
    const-class v2, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashController;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 565
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v2, :cond_5

    .line 566
    const-class v2, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Hint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 567
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v2, :cond_6

    .line 568
    const-class v2, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 569
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-nez v2, :cond_7

    .line 570
    const-class v2, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ZoomController;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 573
    :cond_7
    new-instance v2, Lcom/oneplus/base/HandleSet;

    new-array v4, v3, [Lcom/oneplus/base/Handle;

    invoke-direct {v2, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 576
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v2, :cond_8

    .line 578
    const-class v2, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v4, Lcom/oneplus/camera/panorama/PanoramaUI$4;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$4;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 589
    :cond_8
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    if-nez v2, :cond_9

    .line 590
    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    invoke-direct {v2, v0}, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    .line 591
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v2, :cond_a

    .line 592
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    invoke-interface {v4, v5, v3}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 595
    :cond_a
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableSelfTimer()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 598
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v2, :cond_b

    .line 599
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v5, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v4, v5, v3}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 602
    :cond_b
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v2, :cond_c

    .line 603
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 606
    :cond_c
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 609
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    .line 612
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v2, :cond_d

    .line 613
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    invoke-interface {v4, v3}, Lcom/oneplus/camera/ZoomController;->lockZoom(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 616
    :cond_d
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 619
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 622
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v2, :cond_e

    .line 623
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->setupCaptureButton()V

    .line 626
    :cond_e
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_f

    .line 628
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 629
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f07004b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    .line 630
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->isControllerLinked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 632
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 633
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v7, v4, v5, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 640
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_f
    :goto_1
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 641
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->setupUI()V

    .line 662
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-nez v2, :cond_11

    .line 663
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const-class v4, Lcom/oneplus/camera/FaceTracker;

    invoke-virtual {v2, v4}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FaceTracker;

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    .line 666
    :cond_11
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v2, :cond_12

    .line 667
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v4, Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

    invoke-interface {v2, v4, v3}, Lcom/oneplus/camera/FaceTracker;->disableFaceDetection(Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    .line 671
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 635
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_13
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v7, v4, v5, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 644
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_14
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onEnter() - Setup UI when capture UI inflated"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-nez v2, :cond_10

    .line 647
    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$5;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 656
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_2
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    .line 681
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 684
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 687
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    .line 690
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 693
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 696
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 699
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 702
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    :cond_0
    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    .line 705
    iput-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 708
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    .line 712
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 713
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 728
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 731
    const-class v1, Lcom/oneplus/camera/ui/CameraGallery;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$6;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 758
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 759
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$7;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 772
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$8;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 781
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$9;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 805
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaUI$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$10;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 823
    return-void
.end method
