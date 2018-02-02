.class final Lcom/oneplus/camera/ui/OptionsPanelImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/OptionsPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;,
        Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;,
        Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;,
        Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I = null

.field private static final BUTTON_ANIMATION_DURATION:J = 0x96L

.field private static final DISABLE_CAPTURE_UI:Ljava/lang/String; = "PhotoResolutionChange"

.field private static PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field

.field private static PHOTO_DEFAULT_TIER_SECOND_FRONT_CAMERA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field

.field private static VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_Button_marginEnd:I

.field private m_Button_width:I

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_IsOptionsPanelVisible:Ljava/lang/Boolean;

.field private m_IsRestartPreviewNeeded:Z

.field private m_OptionsButtonTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private m_OptionsPanel:Landroid/view/View;

.field private m_OptionsPanelDefaultHeight:I

.field private m_OptionsPanelExpandedHeight:I

.field private m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;

.field private m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;

.field private m_PhotoResButtonsClicked:Z

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private final m_SceneItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_SecondTierContainer:Landroid/view/ViewGroup;

.field private m_SelfTimerButtonClicked:Z

.field private final m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field private m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_VideoResButtonsClicked:Z

.field private final m_VideoResolutionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_ViewGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND_FRONT_CAMERA:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->values()[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->changeVideoResolution()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/camera/media/MediaType;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/media/Resolution;)V
    .locals 0
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionChanged(Lcom/oneplus/camera/media/Resolution;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/ui/OptionsPanelImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "resolutions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAndResetAllViews()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupOptionsPanelButtons()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;I)V
    .locals 0
    .param p1, "toggleOptionsPanelVisibilityHandle"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->toggleOptionsPanelVisibility(Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->changePhotoResolution()V

    return-void
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSelfTimerButton()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/ui/OptionsPanelImpl;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSelfTimerButton(J)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkCameraPrevewRestartNeeded()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->closeSecondTierPanel()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onGridButtonClicked()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onItemClicked(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onPhotoResolutionButtonClicked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v4

    .line 63
    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v5

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v3

    .line 65
    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v4

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND_FRONT_CAMERA:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    const-string/jumbo v0, "Options Panel"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    .line 86
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PhotoResButtonsClicked:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    .line 90
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SelfTimerButtonClicked:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    .line 92
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResButtonsClicked:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    .line 94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    .line 96
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsRestartPreviewNeeded:Z

    .line 149
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 150
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 151
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 146
    return-void
.end method

.method private changePhotoResolution()V
    .locals 8

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/OperationState;

    .line 267
    .local v4, "state":Lcom/oneplus/camera/OperationState;
    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "OptionsPanelImpl() - No resolutionManager! Could not change photo resolution"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 274
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 275
    .local v3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    .line 276
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 278
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    rem-int v1, v5, v6

    .line 280
    .local v1, "next":I
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/media/Resolution;

    invoke-interface {v6, v7, v5}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 264
    .end local v0    # "index":I
    .end local v1    # "next":I
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v3    # "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :cond_1
    return-void
.end method

.method private changeVideoResolution()Z
    .locals 9

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/OperationState;

    .line 240
    .local v5, "state":Lcom/oneplus/camera/OperationState;
    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v5, v6, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCameraPreviewRestartNeed()Z

    move-result v6

    iput-boolean v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsRestartPreviewNeeded:Z

    .line 243
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 245
    .local v4, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 246
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 248
    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 249
    .local v1, "index":I
    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    rem-int v2, v6, v7

    .line 250
    .local v2, "next":I
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 252
    .local v0, "currentPreviewSize":Landroid/util/Size;
    iget-object v7, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v8, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/media/Resolution;

    invoke-interface {v7, v8, v6}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 253
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 254
    const/4 v6, 0x1

    return v6

    .line 260
    .end local v0    # "currentPreviewSize":Landroid/util/Size;
    .end local v1    # "index":I
    .end local v2    # "next":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v4    # "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :cond_0
    const/4 v6, 0x0

    return v6
.end method

.method private checkCameraPrevewRestartNeeded()V
    .locals 4

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCameraPrevewRestartNeeded(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsRestartPreviewNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsRestartPreviewNeeded:Z

    if-eqz v1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1346
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1340
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    :goto_0
    return-void

    .line 1350
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkCameraPrevewRestartNeeded(): startCameraPreview!"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 1352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsRestartPreviewNeeded:Z

    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkItemCount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "hasItems":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    if-nez v0, :cond_1

    .line 166
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 156
    :cond_1
    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeSecondTierPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1609
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1610
    return-void

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 1615
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1616
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1607
    :cond_1
    return-void
.end method

.method private createResolutionItem(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    .locals 5
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 218
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    .line 221
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findResolutionButtonResId(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    move-result-object v2

    .line 223
    .local v2, "resolutionItemResource":Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    iget v3, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    iget v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    :cond_0
    iget v3, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    iget v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :goto_0
    return-object v1

    .line 228
    :cond_1
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private findResolutionButtonResId(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    .locals 2
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 290
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;)V

    .line 291
    .local v0, "resolutionItemResource":Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const v1, 0x7f0200b0

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 294
    const v1, 0x7f0b0045

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    const v1, 0x7f0200af

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 299
    const v1, 0x7f0b0044

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const v1, 0x7f0200b1

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 304
    const v1, 0x7f0b0046

    iput v1, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    goto :goto_0
.end method

.method private isCameraPreviewRestartNeed()Z
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 550
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 557
    const/4 v1, 0x0

    return v1

    .line 554
    :pswitch_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    .line 555
    const/4 v1, 0x1

    return v1

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onGridButtonClicked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x96

    const v7, 0x7f0200a2

    const v6, 0x7f0200a1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v5

    sget-object v10, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v5, v10, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v5, v10, :cond_1

    .line 605
    return-void

    .line 607
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v10, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v5, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 608
    .local v0, "gridbutton":Landroid/widget/ImageButton;
    if-nez v0, :cond_2

    .line 609
    return-void

    .line 611
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Settings;

    .line 612
    .local v4, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v5, "Grid.IsVisible"

    invoke-virtual {v4, v5}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 614
    .local v1, "isGridVisible":Z
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    if-eqz v5, :cond_4

    .line 615
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    if-eqz v1, :cond_3

    :goto_0
    invoke-virtual {v10, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v12, v13}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    .line 621
    :goto_1
    if-eqz v1, :cond_7

    move v5, v8

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 623
    const-string/jumbo v6, "Grid.IsVisible"

    if-eqz v1, :cond_8

    move v5, v8

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    const-class v5, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    .line 626
    .local v2, "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    sget-object v5, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-eqz v1, :cond_9

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 629
    const-class v5, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 630
    .local v3, "previewOverlay":Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 598
    return-void

    .end local v2    # "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    .end local v3    # "previewOverlay":Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    :cond_3
    move v6, v7

    .line 615
    goto :goto_0

    .line 618
    :cond_4
    new-instance v10, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v11

    if-eqz v1, :cond_5

    move v5, v7

    :goto_5
    invoke-virtual {v11, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v10, v5}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    if-eqz v1, :cond_6

    :goto_6
    invoke-virtual {v10, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v12, v13}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    goto :goto_1

    :cond_5
    move v5, v6

    .line 618
    goto :goto_5

    :cond_6
    move v6, v7

    .line 619
    goto :goto_6

    :cond_7
    move v5, v9

    .line 621
    goto :goto_2

    :cond_8
    move v5, v9

    .line 623
    goto :goto_3

    .restart local v2    # "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    :cond_9
    move v8, v9

    .line 626
    goto :goto_4
.end method

.method private onItemClicked(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V
    .locals 5
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_1

    .line 669
    return-void

    .line 672
    :cond_1
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    .line 673
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Lcom/oneplus/camera/scene/Scene;

    if-eqz v2, :cond_6

    move-object v1, v0

    .line 675
    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 676
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v2, :cond_5

    .line 678
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_2

    .line 680
    return-void

    .line 681
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->isClicked:Z

    .line 683
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v3, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 684
    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    .line 685
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 686
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClicked() - Fail to change scene to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_4
    :goto_0
    return-void

    .line 689
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onItemClicked() - No SceneManager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_6
    instance-of v2, v0, Lcom/oneplus/camera/media/Resolution;

    if-eqz v2, :cond_8

    .line 696
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v2, :cond_7

    .line 697
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v2, v3, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 698
    :cond_7
    return-void

    .line 661
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_8
    return-void
.end method

.method private onPhotoResolutionButtonClicked()V
    .locals 5

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_1

    .line 569
    return-void

    .line 571
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PhotoResButtonsClicked:Z

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 575
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-string/jumbo v2, "PhotoResolutionChange"

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 577
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_2

    .line 579
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 580
    .local v1, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 581
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 583
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v3

    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 562
    .end local v1    # "oldHandle":Lcom/oneplus/base/Handle;
    :cond_2
    :pswitch_0
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 8
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 706
    instance-of v4, p1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    if-nez v4, :cond_0

    .line 707
    return-void

    .line 710
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 711
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 712
    return-void

    .line 715
    :cond_1
    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-direct {v2, p0, v4, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    .line 718
    .local v2, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v4, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 720
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSceneAdded() - scene: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "isSelected":Z
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 725
    const/4 v1, 0x1

    .line 727
    :cond_2
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "Face Beauty (Photo)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 729
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 730
    iget-object v5, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v7, 0x7f0200a0

    invoke-virtual {v4, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    invoke-direct {v6, v4}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_width:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 732
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 733
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    invoke-direct {p0, v2, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 743
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 746
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 704
    return-void

    .line 730
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v7, 0x7f02009f

    invoke-virtual {v4, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 737
    :cond_4
    return-void
.end method

.method private onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    .locals 8
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 753
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, "nextdrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 757
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 759
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/camera/scene/Scene;

    sget-object v6, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v6, "Face Beauty (Photo)"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    .line 763
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v6, 0x7f0200a0

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 766
    .local v2, "nextdrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-boolean v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->isClicked:Z

    if-eqz v3, :cond_3

    .line 768
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v2, v6, v7}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    .line 769
    iput-boolean v5, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->isClicked:Z

    .line 753
    .end local v2    # "nextdrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .local v2, "nextdrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move v3, v5

    .line 757
    goto :goto_1

    .line 765
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v6, 0x7f02009f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "nextdrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 777
    :cond_3
    if-eqz v2, :cond_0

    .line 778
    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-direct {v6, v2}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 787
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    .end local v2    # "nextdrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne p1, v6, :cond_5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 751
    return-void

    :cond_5
    move v4, v5

    .line 787
    goto :goto_4
.end method

.method private onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 794
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 796
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 797
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 800
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 802
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 805
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 792
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    return-void

    .line 794
    .restart local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onVideoResolutionButtonClicked(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v15

    sget-object v16, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v15

    sget-object v16, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 478
    return-void

    .line 479
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v16, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v15 .. v16}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 480
    .local v13, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 482
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResButtonsClicked:Z

    if-nez v15, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v16, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v15 .. v16}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/media/Resolution;

    .line 485
    .local v12, "resolution":Lcom/oneplus/camera/media/Resolution;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v16, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 486
    .local v14, "videobutton":Landroid/widget/ImageButton;
    if-nez v14, :cond_2

    .line 487
    return-void

    .line 488
    :cond_2
    const/4 v11, 0x0

    .line 490
    .local v11, "resId":I
    invoke-virtual {v14}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v3

    .line 491
    .local v3, "enabled":Z
    const/4 v7, 0x0

    .line 492
    .local v7, "nextdrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 493
    if-eqz v3, :cond_6

    const v11, 0x7f020095

    .line 518
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 519
    .local v7, "nextdrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v15, v7, v0, v1}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    .line 523
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResButtonsClicked:Z

    .line 526
    .end local v3    # "enabled":Z
    .end local v7    # "nextdrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "resId":I
    .end local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v14    # "videobutton":Landroid/widget/ImageButton;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 527
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v15, :cond_5

    .line 529
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v17, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v15}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v15

    aget v15, v16, v15

    packed-switch v15, :pswitch_data_0

    .line 471
    .end local v2    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_5
    :goto_1
    return-void

    .line 493
    .restart local v3    # "enabled":Z
    .local v7, "nextdrawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "resId":I
    .restart local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v14    # "videobutton":Landroid/widget/ImageButton;
    :cond_6
    const v11, 0x7f020094

    goto :goto_0

    .line 494
    :cond_7
    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 497
    const/4 v4, 0x0

    .line 498
    .local v4, "has1080p60fpsItem":Z
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "res$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/media/Resolution;

    .line 499
    .local v9, "res":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v9}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v9}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 500
    const/4 v4, 0x1

    goto :goto_2

    .line 502
    .end local v9    # "res":Lcom/oneplus/camera/media/Resolution;
    :cond_9
    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    if-eqz v4, :cond_a

    .line 505
    if-eqz v3, :cond_c

    const v11, 0x7f020093

    goto/16 :goto_0

    .line 503
    :cond_a
    if-eqz v3, :cond_b

    const v11, 0x7f020099

    goto/16 :goto_0

    :cond_b
    const v11, 0x7f020098

    goto/16 :goto_0

    .line 505
    :cond_c
    const v11, 0x7f020092

    goto/16 :goto_0

    .line 507
    .end local v4    # "has1080p60fpsItem":Z
    .end local v10    # "res$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 509
    invoke-interface {v13, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 510
    .local v5, "index":I
    add-int/lit8 v15, v5, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    rem-int v6, v15, v16

    .line 512
    .local v6, "next":I
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v15}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 513
    if-eqz v3, :cond_e

    const v11, 0x7f020095

    goto/16 :goto_0

    :cond_e
    const v11, 0x7f020094

    goto/16 :goto_0

    .line 515
    :cond_f
    if-eqz v3, :cond_10

    const v11, 0x7f020097

    goto/16 :goto_0

    :cond_10
    const v11, 0x7f020096

    goto/16 :goto_0

    .line 533
    .end local v3    # "enabled":Z
    .end local v5    # "index":I
    .end local v6    # "next":I
    .end local v7    # "nextdrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "resId":I
    .end local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v14    # "videobutton":Landroid/widget/ImageButton;
    .restart local v2    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 534
    .local v8, "oldHandle":Lcom/oneplus/base/Handle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v16, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 536
    const-string/jumbo v15, "PhotoResolutionChange"

    invoke-virtual {v2, v15}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 537
    invoke-static {v8}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_1

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onVideoResolutionChanged(Lcom/oneplus/camera/media/Resolution;)V
    .locals 3
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 817
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 818
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 815
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 813
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    return-void
.end method

.method private onVideoResolutionListChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 830
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 831
    .local v2, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 828
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 833
    .end local v2    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 836
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    check-cast p1, Ljava/util/List;

    .line 837
    .restart local p1    # "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 838
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 840
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->createResolutionItem(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    move-result-object v2

    .line 841
    .restart local v2    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 843
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 847
    .end local v2    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 825
    return-void
.end method

.method private prepareButtons()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 920
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_width:I

    .line 921
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080095

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    .line 922
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->values()[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v3, v8, v6

    .line 924
    .local v3, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v10, 0x7f030025

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 925
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_width:I

    const/4 v10, -0x1

    invoke-direct {v1, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 926
    .local v1, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 928
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v10

    aget v5, v5, v10

    packed-switch v5, :pswitch_data_0

    .line 993
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 922
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 930
    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 931
    const v5, 0x7f090004

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 932
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v10, 0x7f0200ae

    invoke-virtual {v5, v10}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    new-instance v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$1;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$1;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 942
    :pswitch_1
    const-class v5, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    .line 943
    .local v4, "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    sget-object v5, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 944
    .local v2, "isGridVisible":Z
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 945
    const v5, 0x7f090005

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 946
    if-eqz v2, :cond_0

    .line 947
    new-instance v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    const v11, 0x7f0200a2

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    :goto_2
    new-instance v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$2;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 949
    :cond_0
    new-instance v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    const v11, 0x7f0200a1

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 960
    .end local v2    # "isGridVisible":Z
    .end local v4    # "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    :pswitch_2
    const v5, 0x7f090006

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 961
    new-instance v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$3;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$3;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 970
    :pswitch_3
    const v5, 0x7f090007

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 971
    new-instance v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$4;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$4;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 980
    :pswitch_4
    const v5, 0x7f090008

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 981
    new-instance v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$5;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$5;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 918
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v1    # "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    :cond_1
    return-void

    .line 928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private removeAndResetAllViews()V
    .locals 5

    .prologue
    .line 1379
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1381
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 1384
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "button$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1386
    .local v0, "button":Landroid/widget/ImageButton;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 1377
    .end local v0    # "button":Landroid/widget/ImageButton;
    :cond_1
    return-void
.end method

.method private setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 14
    .param p1, "group"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;>;"
    iget-object v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "vg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 378
    .local v8, "vg":Landroid/view/ViewGroup;
    if-eq v8, p1, :cond_0

    .line 380
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "buttonview$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 381
    .local v0, "buttonview":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    iget-object v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 385
    .end local v0    # "buttonview":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    .end local v1    # "buttonview$iterator":Ljava/util/Iterator;
    .end local v8    # "vg":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 386
    .local v5, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    .line 387
    iget-object v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 391
    .end local v5    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v10, v11, :cond_6

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v10, v11, :cond_7

    .line 395
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    iget-object v11, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_7

    .line 397
    iget-object v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 399
    .local v4, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v10, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    iget-object v11, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "isSelected":Z
    iget-object v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    iget-object v10, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    check-cast v10, Lcom/oneplus/camera/scene/Scene;

    if-ne v11, v10, :cond_4

    .line 402
    const/4 v3, 0x1

    .line 404
    :cond_4
    iget-object v10, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    check-cast v10, Lcom/oneplus/camera/scene/Scene;

    sget-object v11, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "Face Beauty (Photo)"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 406
    iget-object v10, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    const v11, 0x7f090002

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 407
    iget-object v11, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    new-instance v12, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    const v13, 0x7f0200a0

    invoke-virtual {v10, v13}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_3
    invoke-direct {v12, v10}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_width:I

    const/4 v11, -0x1

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 410
    iget-object v10, v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 407
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    const v13, 0x7f02009f

    invoke-virtual {v10, v13}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_3

    .line 420
    .end local v3    # "isSelected":Z
    .end local v4    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v10, v11, :cond_7

    .line 422
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 424
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 373
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private setupContainerVisibility(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 433
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "viewgroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 435
    .local v0, "viewgroup":Landroid/view/ViewGroup;
    if-ne v0, p1, :cond_0

    .line 436
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 431
    .end local v0    # "viewgroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private setupEventHandler()V
    .locals 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1011
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$7;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1000
    :cond_0
    return-void
.end method

.method private setupOptionsPanelButtons()V
    .locals 2

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND_FRONT_CAMERA:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0
.end method

.method private setupPropertyChangedCallback()V
    .locals 4

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1047
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1070
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1089
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$10;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1101
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$11;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1109
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$12;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1135
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1184
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$14;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1193
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$15;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1202
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$16;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1217
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_2

    .line 1219
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1242
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v1, :cond_3

    .line 1244
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$18;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$18;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1253
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$19;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$19;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1266
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v1, :cond_4

    .line 1268
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$20;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$20;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1281
    :goto_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1309
    const-class v1, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashController;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 1310
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v1, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v2, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$22;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$22;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1323
    :cond_0
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 1324
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    sget-object v2, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$23;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$23;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1042
    :cond_1
    return-void

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialize() - No CaptureModeManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialize() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1279
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialize() - No SceneManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private toggleOptionsPanelVisibility(Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;I)V
    .locals 3
    .param p1, "toggleOptionsPanelVisibilityHandle"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 200
    .local v0, "visibility":I
    sparse-switch v0, :sswitch_data_0

    .line 208
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "toggleOptionsPanelVisibility() - unknow visibility"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 202
    :sswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 205
    :sswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateButtonState(Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .prologue
    .line 1588
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-ui-OptionsPanelImpl$OptionsPanelButtonSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1587
    :goto_0
    :pswitch_0
    return-void

    .line 1590
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes()V

    goto :goto_0

    .line 1593
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButton()V

    goto :goto_0

    .line 1596
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSelfTimerButton()V

    goto :goto_0

    .line 1599
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateGridButton()V

    goto :goto_0

    .line 1588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateGridButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1393
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1394
    .local v0, "gridbutton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1395
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v4, v5, :cond_0

    .line 1396
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1401
    :goto_0
    const-class v4, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    .line 1402
    .local v3, "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    sget-object v4, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1404
    .local v1, "isGridVisible":Z
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1405
    new-instance v5, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    if-eqz v1, :cond_1

    const v4, 0x7f0200a2

    :goto_1
    invoke-virtual {v6, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1391
    return-void

    .line 1398
    .end local v1    # "isGridVisible":Z
    .end local v3    # "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    :cond_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1405
    .restart local v1    # "isGridVisible":Z
    .restart local v3    # "previewGrid":Lcom/oneplus/camera/ui/CameraPreviewGrid;
    :cond_1
    const v4, 0x7f0200a1

    goto :goto_1
.end method

.method private updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    .param p2, "isSelected"    # Z

    .prologue
    .line 1413
    if-eqz p2, :cond_0

    .line 1415
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1416
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0c0025

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1411
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1421
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateMoreOptionsButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1471
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1472
    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1468
    return-void
.end method

.method private updatePhotoResolutionButtonRes()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes(Lcom/oneplus/camera/media/Resolution;)V

    .line 1478
    :goto_0
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePhotoResolutionButtonRes() - m_ResolutionManager is null, can not update photo resolution button resource"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhotoResolutionButtonRes(Lcom/oneplus/camera/media/Resolution;)V
    .locals 8
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 1487
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1489
    .local v2, "photobutton":Landroid/widget/ImageButton;
    if-nez v2, :cond_0

    .line 1490
    return-void

    .line 1492
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v1

    .line 1493
    .local v1, "photoRatio":Lcom/oneplus/util/AspectRatio;
    const/4 v0, 0x0

    .line 1494
    .local v0, "nextdrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 1495
    .local v3, "resId":I
    sget-object v4, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    if-ne v1, v4, :cond_2

    .line 1496
    const v3, 0x7f0200b4

    .line 1503
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 1504
    return-void

    .line 1497
    :cond_2
    sget-object v4, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    if-ne v1, v4, :cond_3

    .line 1498
    const v3, 0x7f0200b2

    goto :goto_0

    .line 1499
    :cond_3
    sget-object v4, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    if-ne v1, v4, :cond_1

    .line 1500
    const v3, 0x7f0200b3

    goto :goto_0

    .line 1506
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1507
    .local v0, "nextdrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1510
    iget-boolean v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PhotoResButtonsClicked:Z

    if-eqz v4, :cond_5

    .line 1512
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v0, v6, v7}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    .line 1513
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PhotoResButtonsClicked:Z

    .line 1485
    :goto_1
    return-void

    .line 1515
    :cond_5
    new-instance v4, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-direct {v4, v0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateSelfTimerButton()V
    .locals 2

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSelfTimerButton(J)V

    .line 1427
    return-void
.end method

.method private updateSelfTimerButton(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const/4 v6, 0x0

    .line 1434
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1436
    .local v2, "timerbutton":Landroid/widget/ImageButton;
    if-nez v2, :cond_0

    .line 1437
    return-void

    .line 1440
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1441
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1442
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1432
    :goto_0
    return-void

    .line 1445
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_2

    .line 1448
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0200b5

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1456
    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SelfTimerButtonClicked:Z

    if-eqz v3, :cond_5

    .line 1458
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v1, v4, v5}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->startAnimation(Landroid/graphics/drawable/Drawable;J)V

    .line 1459
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SelfTimerButtonClicked:Z

    goto :goto_0

    .line 1449
    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-wide/16 v4, 0x3

    cmp-long v3, p1, v4

    if-nez v3, :cond_3

    .line 1450
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0200c9

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 1451
    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-wide/16 v4, 0x5

    cmp-long v3, p1, v4

    if-nez v3, :cond_4

    .line 1452
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0200ca

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 1454
    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0200c8

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "nextDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 1461
    :cond_5
    new-instance v3, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-direct {v3, v1}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateVideoResolutionButton()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1521
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1522
    return-void

    .line 1524
    :cond_0
    const/4 v1, 0x0

    .line 1525
    .local v1, "isCapturing":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1526
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v5

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 1533
    const/4 v1, 0x1

    .line 1537
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v5}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 1538
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1542
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes()V

    .line 1519
    return-void

    .line 1530
    :pswitch_0
    const/4 v1, 0x0

    .line 1531
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1538
    goto :goto_1

    .line 1540
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoResolutionButtonRes()V
    .locals 3

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v1, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .line 1550
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes(Lcom/oneplus/camera/media/Resolution;)V

    .line 1546
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :goto_0
    return-void

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateVideoResolutionButtonRes() - m_ResolutionManager is null, can not update video resolution button resource"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVideoResolutionButtonRes(Lcom/oneplus/camera/media/Resolution;)V
    .locals 6
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 1557
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1558
    .local v3, "videobutton":Landroid/widget/ImageButton;
    if-nez v3, :cond_0

    .line 1559
    return-void

    .line 1560
    :cond_0
    const/4 v2, 0x0

    .line 1561
    .local v2, "resId":I
    invoke-virtual {v3}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    .line 1562
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 1563
    .local v1, "nextdrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1564
    if-eqz v0, :cond_2

    const v2, 0x7f020097

    .line 1575
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1576
    .local v1, "nextdrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResButtonsClicked:Z

    .line 1579
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 1580
    return-void

    .line 1564
    .local v1, "nextdrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v2, 0x7f020096

    goto :goto_0

    .line 1565
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1567
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_5

    .line 1568
    if-eqz v0, :cond_4

    const v2, 0x7f020093

    goto :goto_0

    :cond_4
    const v2, 0x7f020092

    goto :goto_0

    .line 1570
    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x7f020095

    goto :goto_0

    :cond_6
    const v2, 0x7f020094

    goto :goto_0

    .line 1572
    :cond_7
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1573
    if-eqz v0, :cond_8

    const v2, 0x7f020099

    goto :goto_0

    :cond_8
    const v2, 0x7f020098

    goto :goto_0

    .line 1582
    .local v1, "nextdrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1583
    new-instance v4, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;

    invoke-direct {v4, v1}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1555
    return-void
.end method


# virtual methods
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
    .line 314
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    return-object v0

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 328
    const-class v4, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 329
    const-class v4, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 330
    const-class v4, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 331
    const-class v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 334
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 335
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanelDefaultHeight:I

    .line 336
    iget v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanelDefaultHeight:I

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanelExpandedHeight:I

    .line 337
    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f0900a1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    .line 338
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v5, 0x7f0900a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    .line 340
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 345
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v4, :cond_0

    .line 346
    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v6, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 350
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v4, :cond_1

    .line 351
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    .line 353
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->prepareButtons()V

    .line 355
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupOptionsPanelButtons()V

    .line 357
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V

    .line 359
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupEventHandler()V

    .line 362
    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 363
    .local v3, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_2
    if-eqz v3, :cond_4

    .line 364
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 365
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/Scene;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 368
    .restart local v3    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateMoreOptionsButton()V

    .line 369
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateVideoResolutionButton()V

    .line 322
    return-void
.end method

.method protected onMoreOptionsButtonClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 450
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanelExpandedHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 457
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 458
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 459
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 460
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 462
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->closeSecondTierPanel()V

    goto :goto_0
.end method

.method protected onSelfTimerButtonClicked()V
    .locals 5

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_1

    .line 642
    return-void

    .line 644
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SelfTimerButtonClicked:Z

    .line 646
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 647
    .local v0, "seconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 648
    const-wide/16 v0, 0x3

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 635
    return-void

    .line 649
    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 650
    const-wide/16 v0, 0x5

    goto :goto_0

    .line 651
    :cond_3
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 652
    const-wide/16 v0, 0xa

    goto :goto_0

    .line 654
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
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
    .line 1366
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 1367
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    .line 1368
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public toggleOptionsPanelVisibilityRequest(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "reason"    # Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;
    .param p2, "flag"    # I

    .prologue
    const v8, 0x7f08009a

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 853
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 854
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isRunningOrInitializing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 856
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Component is not running"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-object v5

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 861
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 864
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;)V

    .line 865
    .local v0, "handle":Lcom/oneplus/camera/ui/OptionsPanelImpl$ToggleOptionsPanelVisibilityHandle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ToggleOptionsPanelHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 867
    if-nez p1, :cond_2

    .line 868
    sget-object p1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    .line 870
    :cond_2
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->VISIBLE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    if-ne p1, v3, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 874
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 875
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "Manual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 876
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0800de

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 881
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 882
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_6

    .line 884
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_5

    .line 885
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 894
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V

    .line 895
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 896
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 897
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/scene/Scene;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    .line 915
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    :goto_2
    return-object v0

    .line 878
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 888
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    .line 892
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    .line 899
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_7
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    if-ne p1, v3, :cond_3

    .line 902
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->closeSecondTierPanel()V

    .line 904
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAndResetAllViews()V

    .line 906
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupOptionsPanelButtons()V

    .line 909
    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V

    .line 910
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 911
    sget-object v3, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2
.end method
