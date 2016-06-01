.class public Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.super Lcom/oneplus/camera/UIComponent;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    }
.end annotation


# static fields
.field private static CAPTURE_MODE_ITEM_HEIGHT:I = 0x0

.field private static final DURATION_ANIMATION:J = 0xc8L

.field private static final DURATION_INITIAL_PANEL_VISIBLE:J = 0x5dcL

.field private static final DURATION_SHOW_PANEL_WHEN_SWITCH:J = 0x5dcL

.field private static final FAST_SWITCH_ENABLED:Z = true

.field private static final MSG_HIDE_CAPTURE_MODE_PANEL:I = 0x2715

.field private static final MSG_SHIFT_CAPTURE_MODE_PANEL:I = 0x2716

.field public static final PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_AdvSettingsButton:Landroid/view/View;

.field private m_AdvSettingsButtonMargin:I

.field private m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureModeIndicator:Landroid/widget/ImageView;

.field private final m_CaptureModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

.field private m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_CaptureModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureModesPanel:Landroid/view/View;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

.field private m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

.field private m_GestureQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsCaptureModesPanelOpened:Z

.field private m_IsEasyMode:Z

.field private m_IsFirstCaptureModesPanelOpen:Z

.field private final m_IsRotationReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSwitchingCaptureMode:Z

.field private m_KeyEventHandle:Lcom/oneplus/base/Handle;

.field private m_LockPanel:Z

.field private m_ModeContainerPosition:F

.field private m_ModeIndex:I

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field private m_TouchReceiver:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SwitchCaptureMode"

    const-class v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-class v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 357
    const-string v0, "Capture Mode Switcher"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    .line 81
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 85
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 93
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    .line 99
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    .line 211
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$2;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsRotationReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 316
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isIntersectStatusBar(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openInitialCaptureModesPanel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onCaptureModeItemClicked(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkPreviewCoverState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    return-void
.end method

.method static synthetic access$3202(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->lockCaptureModesPanel(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsEasyMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onAdvancedSettingsButtonClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p1, "x1"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    return-void
.end method

.method private animateCaptureModePanelPosition(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;J)V
    .locals 8
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    .param p2, "animationduration"    # J

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "translationY":I
    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$ui$CaptureModeSwitcher$GestureState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 374
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    const-string v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, v1

    iget v7, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 375
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 378
    return-void

    .line 365
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :pswitch_0
    sget v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    neg-int v1, v2

    .line 366
    goto :goto_0

    .line 368
    :pswitch_1
    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    .line 369
    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canSlideCaptureMode()Z
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 385
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v1, v2, :cond_1

    .line 387
    :cond_0
    const/4 v1, 0x0

    .line 388
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 396
    :cond_2
    return-void
.end method

.method private checkIsStateAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 467
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 490
    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 470
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    move v1, v2

    .line 476
    goto :goto_0

    .line 480
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_2

    move v1, v2

    .line 486
    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 480
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkPreviewCoverState()V
    .locals 5

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 439
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_1

    .line 442
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 443
    .local v1, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 444
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 445
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$UIState:[I

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 453
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    .line 461
    .end local v1    # "oldHandle":Lcom/oneplus/base/Handle;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeCaptureModesPanel(ZJ)V
    .locals 10
    .param p1, "animation"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 403
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 406
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    .line 409
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 412
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    .line 413
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 416
    .local v7, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 417
    .local v0, "animation_translation_px":I
    if-eqz p1, :cond_3

    .line 418
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 419
    mul-int/lit8 v0, v0, -0x1

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 422
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 423
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 426
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsEasyMode:Z

    if-nez v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 428
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 429
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0
.end method

.method private isIntersectStatusBar(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 525
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v0

    .line 526
    .local v0, "height":I
    int-to-float v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 527
    const/4 v2, 0x0

    .line 528
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private lockCaptureModesPanel(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    .line 535
    return-void
.end method

.method private onAdvancedSettingsButtonClicked()V
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->showAdvancedSettings()Z

    .line 541
    return-void
.end method

.method private onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 5
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 548
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 549
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 554
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    .line 557
    .local v2, "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 558
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private onCaptureModeItemClicked(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
    .locals 10
    .param p1, "item"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    const/4 v9, 0x1

    .line 566
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 569
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isCaptureUIEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 600
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget-object v5, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 574
    .local v2, "newModeIndex":I
    const/4 v3, 0x0

    .line 575
    .local v3, "translationY":I
    sget v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    neg-int v4, v4

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    sub-int v5, v2, v5

    mul-int v3, v4, v5

    .line 576
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    const-string v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    aput v8, v6, v7

    iget v7, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 577
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 578
    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 579
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "needToSwitchMode":Z
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v4, :cond_1

    .line 584
    iget-object v4, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 585
    const/4 v1, 0x1

    .line 586
    iput v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 590
    :cond_1
    if-eqz v1, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkPreviewCoverState()V

    .line 595
    :cond_2
    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 597
    iget-object v4, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 599
    const/16 v4, 0x2715

    const-wide/16 v6, 0x190

    invoke-static {p0, v4, v9, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0
.end method

.method private openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    .locals 14
    .param p1, "selectedCaptureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "duration"    # J
    .param p4, "isEasyMode"    # Z

    .prologue
    .line 786
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    if-eqz v3, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkIsStateAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsEasyMode:Z

    .line 797
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setupPanel()V

    .line 800
    if-nez p4, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const-string v4, "CaptureModesPanel"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 804
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    .line 805
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 808
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->cancelAnimation()V

    .line 810
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 811
    .local v9, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz p4, :cond_9

    .line 812
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 813
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 816
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    if-eqz v3, :cond_5

    .line 818
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 819
    .local v13, "indexOfCaptureMode":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 821
    .local v10, "centerIndex":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 823
    add-int/lit8 v3, v13, 0x1

    sub-int v11, v10, v3

    .line 826
    .local v11, "deviation":I
    :goto_1
    iget v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 827
    :cond_3
    sget v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    mul-int v4, v3, v11

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    sget v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    shr-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 828
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 831
    .end local v10    # "centerIndex":I
    .end local v11    # "deviation":I
    .end local v13    # "indexOfCaptureMode":I
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 832
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 868
    :cond_6
    :goto_3
    invoke-direct {p0, v9}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 870
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    goto/16 :goto_0

    .line 825
    .restart local v10    # "centerIndex":I
    .restart local v13    # "indexOfCaptureMode":I
    :cond_7
    sub-int v11, v10, v13

    .restart local v11    # "deviation":I
    goto :goto_1

    .line 827
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 834
    .end local v10    # "centerIndex":I
    .end local v11    # "deviation":I
    .end local v13    # "indexOfCaptureMode":I
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 835
    .local v2, "animation_translation_px":I
    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    if-ne v3, v4, :cond_a

    .line 836
    mul-int/lit8 v2, v2, -0x1

    .line 838
    :cond_a
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const/16 v4, 0xb2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 839
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    .line 841
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 843
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 847
    :goto_4
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 849
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 850
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 852
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 853
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 854
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_c

    .line 855
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 846
    .end local v12    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 859
    .restart local v12    # "i":I
    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    .line 862
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v3, :cond_6

    .line 863
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    goto/16 :goto_3
.end method

.method private openInitialCaptureModesPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 879
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 882
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    .line 885
    const/16 v1, 0x2715

    const-wide/16 v2, 0x5dc

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 890
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    :goto_0
    return-void

    .line 888
    .restart local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsRotationReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method private setCaptureMode()V
    .locals 3

    .prologue
    .line 904
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 908
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 910
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Same capture mode, ignore"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 915
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    if-nez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 918
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Fail to change capture mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 920
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    goto :goto_0
.end method

.method private setMargins(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 895
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 897
    .local v0, "param":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 899
    .end local v0    # "param":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 4
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 928
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 932
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    move-object p1, v2

    .line 933
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 935
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .line 936
    .local v1, "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    if-eq v2, p1, :cond_1

    .line 938
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 933
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 942
    :cond_1
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 946
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    :cond_2
    return-void
.end method

.method private setupPanel()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    .line 955
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    .line 956
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 970
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    .line 971
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    .line 972
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 973
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    .line 974
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButtonMargin:I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setMargins(Landroid/view/View;IIII)V

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 992
    .local v6, "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "count":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 993
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 992
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 985
    .end local v6    # "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButtonMargin:I

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private shiftCaptureModesPanelVertical(ZJ)V
    .locals 6
    .param p1, "isanimationneeded"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 1039
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v2, v3, :cond_2

    .line 1040
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shiftCaptureModesPanelVertical() - CaptureMode panel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Do not shift panel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_1
    :goto_0
    return-void

    .line 1044
    :cond_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 1045
    .local v1, "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1046
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 1048
    .restart local v1    # "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->updateIndexOfCaptureModePanel(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1049
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string v3, "shiftCaptureModesPanelVertical() - CaptureModePanel boundary reached! Stop shift panel"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1051
    const/16 v2, 0x2716

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto :goto_0

    .line 1053
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1054
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1055
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1056
    .restart local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$11;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1067
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_5
    if-eqz p1, :cond_6

    .line 1068
    invoke-direct {p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->animateCaptureModePanelPosition(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;J)V

    .line 1069
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->updateCaptureModePanelTranslationY(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    goto :goto_0

    .line 1071
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->updateCaptureModePanelTranslationY(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 1073
    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1074
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1075
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1077
    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$12;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    .locals 8
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x1

    .line 1002
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string v1, "switchCaptureMode() - Direction : "

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkIsStateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    if-eqz v0, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-ne p1, v0, :cond_0

    .line 1016
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string v1, "switchCaptureMode() - No capture mode manager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1025
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string v1, "CaptureModesPanel"

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1027
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z

    if-nez v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v0, v6, v7, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    .line 1030
    :cond_5
    invoke-direct {p0, v4, v6, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    .line 1032
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsEasyMode:Z

    if-eqz v0, :cond_0

    .line 1033
    const/16 v0, 0x2715

    const-wide/16 v2, 0x5dc

    invoke-static {p0, v0, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0
.end method

.method private updateCaptureModePanelTranslationY(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    .locals 2
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    .line 1088
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$ui$CaptureModeSwitcher$GestureState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1098
    :goto_0
    return-void

    .line 1090
    :pswitch_0
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    goto :goto_0

    .line 1093
    :pswitch_1
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    goto :goto_0

    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIndexOfCaptureModePanel(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)Z
    .locals 3
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    const/4 v0, 0x0

    .line 1102
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-ne p1, v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return v0

    .line 1105
    :cond_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$camera$ui$CaptureModeSwitcher$GestureState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1121
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :pswitch_0
    iget v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    if-eqz v1, :cond_0

    .line 1110
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    goto :goto_1

    .line 1113
    :pswitch_1
    iget v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1116
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    goto :goto_1

    .line 1105
    nop

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
    const-wide/16 v6, 0x5dc

    const-wide/16 v4, 0xc8

    const/16 v3, 0x2715

    const/4 v2, 0x1

    .line 498
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 515
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 518
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v0, v1, :cond_1

    .line 503
    :cond_0
    invoke-static {p0, v3, v2, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-static {p0, v3, v2, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 512
    :pswitch_1
    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 608
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 611
    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 612
    const-class v2, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 613
    const-class v2, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 616
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 617
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    .line 618
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    .line 619
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    .line 620
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButtonMargin:I

    .line 623
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openInitialCaptureModesPanel()V

    .line 625
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 626
    .local v1, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 628
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 631
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 635
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 646
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$5;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 665
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 680
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v2, :cond_1

    .line 682
    const-class v2, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 709
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_2

    .line 711
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 726
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 734
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 736
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 738
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 747
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 749
    const/4 v0, 0x1

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    .line 750
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 756
    :goto_0
    return-object v0

    .line 752
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 754
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0

    .line 756
    :cond_2
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 6
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 764
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 767
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButtonMargin:I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setMargins(Landroid/view/View;IIII)V

    .line 777
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x258

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 778
    return-void

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButtonMargin:I

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 777
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
