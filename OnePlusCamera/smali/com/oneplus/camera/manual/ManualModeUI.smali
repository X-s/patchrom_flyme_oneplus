.class final Lcom/oneplus/camera/manual/ManualModeUI;
.super Lcom/oneplus/camera/ModeUI;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;
.implements Lcom/oneplus/camera/manual/KnobViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/ManualModeUI$22;,
        Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;,
        Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeUI",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeController;",
        ">;",
        "Lcom/oneplus/camera/manual/KnobViewChangedListener;",
        "Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;"
    }
.end annotation


# static fields
.field private static final CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

.field private static final LONG_EXPOSURE_TIME_THRESHOLD:J = 0x1dcd6500L


# instance fields
.field private m_BaseView:Landroid/widget/RelativeLayout;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

.field private m_ControlItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/manual/ControlType;",
            "Lcom/oneplus/camera/manual/ControlItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_ControlType:Lcom/oneplus/camera/manual/ControlType;

.field private m_ControlsContainer:Landroid/widget/LinearLayout;

.field private m_EnterFlags:Ljava/lang/Integer;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_IndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_IndicatorTextView:Landroid/widget/TextView;

.field private m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field private m_KnobViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/manual/ControlType;",
            "Lcom/oneplus/camera/manual/KnobView;",
            ">;"
        }
    .end annotation
.end field

.field private m_KnobViewsVisibilityState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/manual/ControlType;",
            "Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;",
            ">;"
        }
    .end annotation
.end field

.field private m_LockCameraHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/camera/Settings;

.field private m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/manual/ControlType;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 111
    const-string v0, "Manual Mode UI"

    const-class v1, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 77
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/scene/SceneManager;)Lcom/oneplus/camera/scene/SceneManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->retryToEnter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "x2"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/HandleSet;)Lcom/oneplus/base/HandleSet;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/base/HandleSet;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/manual/ManualModeUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setUIEnabled(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/manual/ManualModeUI;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "x2"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/FlashController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/camera/manual/ManualModeUI;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSelectedExposureTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showProcessingDialog()V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/ProcessingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/ProcessingDialog;)Lcom/oneplus/camera/ui/ProcessingDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/ProcessingDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/oneplus/camera/manual/ManualModeUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/oneplus/camera/manual/ManualModeUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/FocusExposureIndicator;)Lcom/oneplus/camera/ui/FocusExposureIndicator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/FocusExposureIndicator;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "x2"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic access$502(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoExposureUI;)Lcom/oneplus/camera/ui/TouchAutoExposureUI;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    return-object p1
.end method

.method static synthetic access$602(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoFocusUI;)Lcom/oneplus/camera/ui/TouchAutoFocusUI;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    return-void
.end method

.method private addCaptureButtonsHandles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v5, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 125
    :cond_1
    return-void
.end method

.method private changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "state"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateIndicatorContainerViewVisibility()V

    .line 136
    :cond_0
    return-void
.end method

.method private createControlViews()V
    .locals 14

    .prologue
    .line 143
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 150
    .local v7, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    .line 152
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    .local v6, "arr$":[Lcom/oneplus/camera/manual/ControlType;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v8, v6, v9

    .line 155
    .local v8, "controlType":Lcom/oneplus/camera/manual/ControlType;
    const v1, 0x7f030012

    const/4 v13, 0x0

    invoke-static {v7, v1, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, "container":Landroid/view/View;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v13, 0x7f070085

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 157
    .local v12, "width":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v11, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v11, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    const v1, 0x7f0b004f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "touchView":Landroid/view/View;
    const v1, 0x7f0b0051

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 164
    .local v3, "imageView":Landroid/widget/ImageView;
    const v1, 0x7f0b0050

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 167
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 168
    .local v0, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    invoke-virtual {v8}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v13

    aget v1, v1, v13

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_1
    if-eqz v0, :cond_2

    .line 201
    const v1, 0x7f090044

    invoke-virtual {v7, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 202
    const v1, 0x7f0a0014

    invoke-virtual {v0, v7, v1}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 203
    invoke-virtual {v0, p0}, Lcom/oneplus/camera/manual/ControlItem;->setControlItemListener(Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;)V

    .line 152
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 172
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/manual/ControlItem;

    .end local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 173
    .restart local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v1, 0x7f020060

    invoke-virtual {v7, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/manual/ControlItem;

    .end local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 180
    .restart local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v1, 0x7f02005d

    invoke-virtual {v7, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 186
    :pswitch_2
    new-instance v0, Lcom/oneplus/camera/manual/ControlItem;

    .end local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 187
    .restart local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v1, 0x7f02005e

    invoke-virtual {v7, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 193
    :pswitch_3
    new-instance v0, Lcom/oneplus/camera/manual/ControlItem;

    .end local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 194
    .restart local v0    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v1, 0x7f02005f

    invoke-virtual {v7, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createKnobViews()V
    .locals 15

    .prologue
    .line 212
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v12, :cond_0

    .line 276
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 217
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07007b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 218
    .local v7, "knobWidth":I
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07007c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 219
    .local v6, "knobHeight":I
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 222
    .local v2, "captureBarHeight":I
    new-instance v0, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "awbKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 226
    invoke-virtual {v0, v8}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v0, p0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 228
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 231
    new-instance v3, Lcom/oneplus/camera/manual/ExposureTimeKnobView;

    invoke-direct {v3, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;-><init>(Landroid/content/Context;)V

    .line 232
    .local v3, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v9, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 235
    invoke-virtual {v3, v9}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {v3, p0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 237
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 240
    new-instance v4, Lcom/oneplus/camera/manual/FocusKnobView;

    invoke-direct {v4, v1}, Lcom/oneplus/camera/manual/FocusKnobView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v4, "focusKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v10, "params3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iput v2, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 244
    invoke-virtual {v4, v10}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v4, p0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 246
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 249
    new-instance v5, Lcom/oneplus/camera/manual/ISOKnobView;

    invoke-direct {v5, v1}, Lcom/oneplus/camera/manual/ISOKnobView;-><init>(Landroid/content/Context;)V

    .line 250
    .local v5, "isoKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v11, "params4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iput v2, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 253
    invoke-virtual {v5, v11}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {v5, p0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 255
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 258
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    .line 259
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    .line 266
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 274
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-object v12, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private getSelectedExposureTimeNanos()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 282
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-wide v2

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v5, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 285
    .local v0, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    .line 288
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v1, :cond_0

    .line 289
    iget-wide v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v2, v2

    goto :goto_0
.end method

.method private hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 3
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    goto :goto_0
.end method

.method private hideProcessingDialog()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 309
    return-void
.end method

.method private hideUI()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideUI() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 320
    :cond_0
    return-void
.end method

.method private isRawCaptureEnabled()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "isRawCaptureEnabled() - m_Settings is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToEnter()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 723
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 725
    :cond_0
    return-void
.end method

.method private onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    .line 729
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private retryToEnter()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->onEnter(I)Z

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 817
    :cond_0
    return-void
.end method

.method private setControlItemText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlItem;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 835
    return-void
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    .line 838
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v2, p1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 843
    .local v1, "oldControlType":Lcom/oneplus/camera/manual/ControlType;
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 844
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V

    .line 845
    if-eqz p2, :cond_2

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    :goto_1
    if-eqz p2, :cond_3

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    :goto_2
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 848
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 851
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    if-eq v2, v3, :cond_0

    .line 853
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    .line 856
    .local v0, "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v0, :cond_4

    .line 857
    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v0    # "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_2
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    goto :goto_2

    .line 859
    .restart local v0    # "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "setControlType() - KnobItemIfo is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFloatingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 874
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFloatingTextViewVisibility(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 881
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 940
    :goto_0
    :pswitch_0
    return-void

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 886
    .local v0, "yMove":F
    if-eqz p1, :cond_1

    .line 888
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 903
    :goto_1
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 904
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$17;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 893
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 895
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 896
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 900
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 915
    :cond_1
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 929
    :goto_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 930
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$18;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 920
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 921
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 922
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 926
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 915
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 946
    if-nez p1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI$19;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setUIEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 966
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 968
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    .line 969
    .local v2, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v2, p1}, Lcom/oneplus/camera/manual/KnobView;->setEnabled(Z)V

    goto :goto_0

    .line 972
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 974
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ControlItem;

    .line 975
    .local v1, "item":Lcom/oneplus/camera/manual/ControlItem;
    invoke-virtual {v1, p1}, Lcom/oneplus/camera/manual/ControlItem;->setEnabled(Z)V

    goto :goto_1

    .line 977
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/oneplus/camera/manual/ControlItem;
    :cond_1
    return-void
.end method

.method private showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 3
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "showKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 988
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    goto :goto_0
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    .line 995
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v1, :cond_0

    .line 996
    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1000
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 1003
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showUI()V
    .locals 6

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1011
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1012
    .local v1, "contentView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    .line 1018
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v5, "showUI() - Show"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 1020
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1021
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v5, "showUI() - Setup"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const v4, 0x7f0b000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    .line 1029
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    .line 1030
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1031
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b004e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    .line 1034
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createControlViews()V

    .line 1037
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createKnobViews()V

    .line 1040
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1043
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 1046
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 1049
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/ControlItem;

    .line 1050
    .local v2, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ControlItem;->getControlContainer()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_1

    .line 1051
    .end local v2    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V
    .locals 4
    .param p1, "oldControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 1058
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1062
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v2, 0x0

    .line 1063
    .local v2, "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    const/4 v1, 0x0

    .line 1064
    .local v1, "newItem":Lcom/oneplus/camera/manual/ControlItem;
    if-eqz p1, :cond_2

    .line 1065
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v2, Lcom/oneplus/camera/manual/ControlItem;

    .line 1066
    .restart local v2    # "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    :cond_2
    if-eqz p2, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v1, Lcom/oneplus/camera/manual/ControlItem;

    .line 1068
    .restart local v1    # "newItem":Lcom/oneplus/camera/manual/ControlItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 1070
    const v3, 0x7f0a0014

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1071
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    .line 1073
    :cond_4
    if-eqz v1, :cond_0

    .line 1075
    const v3, 0x7f0a0016

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1076
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateIndicatorContainerViewVisibility()V
    .locals 5

    .prologue
    .line 1084
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1087
    :cond_0
    const/4 v0, 0x0

    .line 1088
    .local v0, "hasVisible":Z
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1090
    .local v2, "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-ne v2, v3, :cond_1

    .line 1091
    const/4 v0, 0x1

    goto :goto_1

    .line 1093
    .end local v2    # "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :cond_2
    if-eqz v0, :cond_3

    .line 1094
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1096
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateKnobItemsSelfRotation()V
    .locals 3

    .prologue
    .line 1103
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1105
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/KnobView;

    .line 1106
    .local v1, "view":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/KnobView;->setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 1108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Lcom/oneplus/camera/manual/KnobView;
    :cond_0
    return-void
.end method

.method private updateKnobViewBackgroundColor()V
    .locals 7

    .prologue
    .line 1114
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1124
    :cond_0
    return-void

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1118
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1119
    .local v1, "color":I
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1120
    .local v4, "previewSize":Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v5

    sget-object v6, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    if-ne v5, v6, :cond_2

    .line 1121
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1122
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/manual/KnobView;

    .line 1123
    .local v3, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v3, v1}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateKnobViewPosition()V
    .locals 18

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v15, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v15, :cond_0

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 1137
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1138
    .local v9, "newMarginBottom":I
    sget-object v15, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v15}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 1139
    .local v13, "previewSize":Landroid/util/Size;
    invoke-static {v13}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v14

    .line 1140
    .local v14, "ratio":Lcom/oneplus/util/AspectRatio;
    sget-object v15, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    invoke-virtual {v14}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1149
    :goto_1
    const/4 v3, 0x0

    .line 1150
    .local v3, "hasChange":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/manual/KnobView;

    .line 1152
    .local v6, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v6}, Lcom/oneplus/camera/manual/KnobView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1153
    .local v11, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1154
    .local v10, "oldMarginBottom":I
    if-eq v10, v9, :cond_2

    .line 1156
    iput v9, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1157
    const/4 v3, 0x1

    goto :goto_2

    .line 1144
    .end local v3    # "hasChange":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v10    # "oldMarginBottom":I
    .end local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v15

    invoke-virtual {v15}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v15

    int-to-float v0, v15

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v17, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v16, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v9, v0

    goto :goto_1

    .line 1162
    .restart local v3    # "hasChange":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    .line 1164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1165
    .local v12, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07007c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1166
    .local v5, "knobHeight":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07008a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1167
    .local v7, "marginToKnobView":I
    add-int v15, v9, v5

    add-int v8, v15, v7

    .line 1168
    .local v8, "newIndicatorMarginBottom":I
    iget v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v15, v8, :cond_4

    .line 1170
    iput v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1171
    const/4 v3, 0x1

    .line 1175
    :cond_4
    if-eqz v3, :cond_0

    .line 1176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 10
    .param p1, "oldControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p3, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p4, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 1183
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    const/4 v3, 0x0

    .line 1187
    .local v3, "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    const/4 v0, 0x0

    .line 1188
    .local v0, "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz p1, :cond_2

    .line 1189
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v3, Lcom/oneplus/camera/manual/KnobView;

    .line 1190
    .restart local v3    # "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_2
    if-eqz p2, :cond_3

    .line 1191
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 1192
    .restart local v0    # "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 1193
    .local v5, "yMove":I
    if-eqz v3, :cond_4

    .line 1195
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    invoke-virtual {p4}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1232
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1233
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1234
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1238
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 1240
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    invoke-virtual {p3}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 1281
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1282
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1283
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto :goto_0

    .line 1198
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1199
    .local v4, "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    invoke-virtual {v4}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 1214
    :goto_2
    :pswitch_1
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v4, v6, :cond_4

    .line 1216
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1217
    move-object v2, v3

    .line 1218
    .local v2, "oldFinalKnobView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$20;

    invoke-direct {v7, p0, p1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$20;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1204
    .end local v2    # "oldFinalKnobView":Landroid/view/View;
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 1205
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 1206
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 1207
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_2

    .line 1211
    :pswitch_3
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 1243
    .end local v4    # "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_4
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1244
    .local v1, "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 1260
    :goto_3
    :pswitch_5
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v1, v6, :cond_0

    .line 1262
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1263
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$21;

    invoke-direct {v7, p0, p2}, Lcom/oneplus/camera/manual/ManualModeUI$21;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1249
    :pswitch_6
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1250
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 1251
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 1252
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 1253
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_3

    .line 1257
    :pswitch_7
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 1275
    .end local v1    # "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_8
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1276
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 1277
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto/16 :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1240
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 1199
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1244
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onControlItemClick(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 2
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v0, p1, :cond_1

    .line 359
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 371
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 375
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 428
    :goto_0
    return v1

    .line 382
    :cond_1
    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "onEnter() - Fail to change to photo mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v3

    if-nez v3, :cond_3

    .line 390
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "onEnter() - Components are initializing, re-enter later"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    move v1, v2

    .line 392
    goto :goto_0

    .line 396
    :cond_3
    new-instance v3, Lcom/oneplus/base/HandleSet;

    new-array v4, v1, [Lcom/oneplus/base/Handle;

    invoke-direct {v3, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 399
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 402
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v3, :cond_4

    .line 403
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 406
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    .line 409
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v3, :cond_5

    .line 410
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v5, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v4, v5, v1}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v1, :cond_6

    .line 414
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v3, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v1, :cond_7

    .line 418
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/TouchAutoExposureUI;->disableTouchLockExposure()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 419
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_8

    .line 420
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->disableTouchLockFocus()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 423
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 426
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    move v1, v2

    .line 428
    goto/16 :goto_0
.end method

.method protected onExit(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 437
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 440
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    .line 443
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 444
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 445
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 446
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    .line 449
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 455
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 456
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 463
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 464
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 467
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 476
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$2;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 485
    const-class v1, Lcom/oneplus/camera/FlashController;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$3;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 494
    const-class v1, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$4;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 503
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$5;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 512
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$6;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 521
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$7;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 543
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$8;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 553
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$9;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 564
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$10;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 586
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$11;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 609
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$12;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 625
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$13;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 638
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$14;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 663
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$15;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 678
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$16;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 712
    new-instance v1, Lcom/oneplus/camera/Settings;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/oneplus/camera/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 713
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/camera/Settings;

    invoke-virtual {v0}, Lcom/oneplus/camera/Settings;->release()V

    .line 745
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onRelease()V

    .line 746
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 753
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeUI;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 756
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 758
    :cond_0
    return-void
.end method

.method public onRotationStateChanged(Lcom/oneplus/camera/manual/KnobView$RotationState;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/manual/KnobView$RotationState;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onRotationStateChanged() - State: "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 777
    :goto_0
    return-void

    .line 771
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 774
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V
    .locals 8
    .param p1, "oldItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;
    .param p2, "newItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 785
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$22;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 803
    :goto_0
    iget-object v0, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 806
    iget-object v0, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlItemText(Ljava/lang/String;)V

    .line 807
    return-void

    .line 788
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x7559

    iget-wide v6, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 792
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755a

    iget-wide v6, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 795
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755b

    iget-wide v6, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 798
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755c

    iget-wide v6, p2, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
