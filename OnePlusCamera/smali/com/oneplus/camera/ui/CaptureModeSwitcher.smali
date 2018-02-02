.class public Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.super Lcom/oneplus/camera/UIComponent;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$2;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;,
        Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I = null

.field private static CAPTURE_MODE_ITEM_HEIGHT:I = 0x0

.field private static final DURATION_ANIMATION:J = 0xc8L

.field private static final DURATION_SHOW_PANEL_WHEN_SWITCH:J = 0x5dcL

.field private static final FAST_SWITCH_ENABLED:Z = true

.field private static final MSG_HIDE_CAPTURE_MODE_PANEL:I = 0x2715

.field private static final MSG_SHIFT_CAPTURE_MODE_PANEL:I = 0x2716

.field public static final PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private m_ButtonContainerMarginTop:I

.field private m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

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

.field private m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureModePositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

.field private m_CaptureModesPanel:Landroid/view/View;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field private m_ExpandCollapseView:Landroid/view/View;

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

.field private m_IndicatorLandPaddingLeft:I

.field private m_IndicatorPaddingTop:I

.field private m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

.field private m_IsClickChangeModeAnimationEnd:Z

.field private m_IsFirstCaptureModesPanelOpen:Z

.field private m_IsPanelRotating:Z

.field private m_IsPanelSetup:Z

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

.field private m_IsSimpleMode:Z

.field private m_IsSwitchToDefaultMode:Z

.field private m_IsSwitchingCaptureMode:Z

.field private m_ItemContainePaddingTop:I

.field private m_KeyEventHandle:Lcom/oneplus/base/Handle;

.field private m_LockPanel:Z

.field private m_ModeContainerPosition:F

.field private m_ModeIndex:I

.field private m_PanelContainerPaddingBottom:I

.field private m_PanelContainerPaddingTop:I

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field private m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

.field private m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_TouchReceiver:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsClickChangeModeAnimationEnd:Z

    return v0
.end method

.method static synthetic -get14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    return v0
.end method

.method static synthetic -get15(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    return v0
.end method

.method static synthetic -get16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    return v0
.end method

.method static synthetic -get17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    return v0
.end method

.method static synthetic -get18(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object v0
.end method

.method static synthetic -get19(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/capturemode/CaptureModeManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-base-RotationSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-base-RotationSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

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

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->values()[Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->CHECKING_DIRECTION:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_LEFT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_RIGHT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsClickChangeModeAnimationEnd:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsPanelRotating:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    return p1
.end method

.method static synthetic -set7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchToDefaultMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    return p1
.end method

.method static synthetic -set9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)Z
    .locals 1
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onCaptureModeItemClicked(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    .locals 0
    .param p1, "selectedCaptureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "duration"    # J
    .param p4, "isEasyMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setRotateContainerParentPadding(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V
    .locals 0
    .param p1, "isAnimationNeeded"    # Z
    .param p2, "duration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    .locals 0
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isCaptureUIEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isIntersectStatusBar(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkExpandCollapseState()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkPreviewCoverState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V
    .locals 0
    .param p1, "animation"    # Z
    .param p2, "duration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->lockCaptureModesPanel(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onAdvancedSettingsButtonClicked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SwitchCaptureMode"

    const-class v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-class v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 68
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureModePanelOpen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 387
    const-string/jumbo v0, "Capture Mode Switcher"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    .line 95
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    .line 103
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchToDefaultMode:Z

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 118
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 125
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    .line 233
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$2;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsRotationReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 343
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 385
    return-void
.end method

.method private animateCaptureModePanelPosition(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;J)V
    .locals 8
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    .param p2, "animationduration"    # J

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "translationY":I
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    const-string/jumbo v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 407
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 409
    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 392
    return-void

    .line 397
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :pswitch_0
    sget v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    neg-int v1, v2

    .line 398
    goto :goto_0

    .line 400
    :pswitch_1
    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canSlideCaptureMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 430
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

    .line 431
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v1, v2, :cond_1

    .line 432
    :cond_0
    return v3

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v1, v2, :cond_3

    .line 436
    :cond_2
    return v3

    .line 435
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v1, v2, :cond_2

    .line 438
    const/4 v1, 0x1

    return v1
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 421
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setRotateContainerParentPadding(Lcom/oneplus/base/Rotation;)V

    .line 414
    :cond_2
    return-void
.end method

.method private checkExpandCollapseState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 445
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 446
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-interface {v0}, Lcom/oneplus/camera/capturemode/CaptureMode;->isSimpleCaptureMode()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 449
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 443
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method private checkIsStateAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 462
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 489
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 466
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 472
    return v3

    .line 478
    :pswitch_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    .line 484
    return v3

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 466
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 478
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkPreviewCoverState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 500
    .local v0, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v1, v2, v4}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 501
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 502
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    .line 494
    .end local v0    # "oldHandle":Lcom/oneplus/base/Handle;
    :goto_1
    :pswitch_0
    return-void

    .line 510
    .restart local v0    # "oldHandle":Lcom/oneplus/base/Handle;
    :pswitch_1
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-interface {v1}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 513
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 516
    :goto_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    .line 525
    .end local v0    # "oldHandle":Lcom/oneplus/base/Handle;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setCaptureMode()V

    goto :goto_1

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkToUseRevert(Lcom/oneplus/base/Rotation;)Z
    .locals 5
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 532
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 533
    .local v0, "isRtlLayout":Z
    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 541
    :pswitch_0
    return v3

    .line 539
    :pswitch_1
    return v4

    .line 546
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 552
    return v3

    .line 550
    :pswitch_2
    return v4

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 546
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private closeCaptureModesPanel(ZJ)V
    .locals 10
    .param p1, "animation"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 562
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsPanelRotating:Z

    if-eqz v1, :cond_1

    .line 566
    return-void

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeCaptureModesPanel()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    .line 572
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkExpandCollapseState()V

    .line 574
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 577
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 580
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 581
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 583
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 584
    .local v7, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 585
    .local v0, "animation_translation_px":I
    if-eqz p1, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    mul-int/lit8 v0, v0, -0x1

    .line 592
    :cond_2
    new-instance v8, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$4;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 600
    .local v8, "endActionRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 621
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 622
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

    .line 623
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

    .line 629
    .end local v8    # "endActionRunnable":Ljava/lang/Runnable;
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 559
    return-void

    .line 603
    .restart local v8    # "endActionRunnable":Ljava/lang/Runnable;
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 604
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 608
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 611
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 612
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 615
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 616
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 626
    .end local v8    # "endActionRunnable":Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialContainerPositionY(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 5
    .param p1, "capturemode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 694
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    if-eqz v3, :cond_0

    .line 697
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 698
    .local v2, "indexOfCaptureMode":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 700
    .local v0, "centerIndex":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 702
    add-int/lit8 v3, v2, 0x1

    sub-int v1, v0, v3

    .line 706
    .local v1, "deviation":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 707
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 692
    .end local v0    # "centerIndex":I
    .end local v1    # "deviation":I
    .end local v2    # "indexOfCaptureMode":I
    :cond_0
    return-void

    .line 704
    .restart local v0    # "centerIndex":I
    .restart local v2    # "indexOfCaptureMode":I
    :cond_1
    sub-int v1, v0, v2

    .restart local v1    # "deviation":I
    goto :goto_0
.end method

.method private isIntersectStatusBar(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 717
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v0

    .line 718
    .local v0, "height":I
    int-to-float v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 719
    const/4 v2, 0x0

    return v2

    .line 720
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private lockCaptureModesPanel(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    .line 725
    return-void
.end method

.method private onAdvancedSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->showAdvancedSettings()Z

    .line 735
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    return-void
.end method

.method private onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 5
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 743
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 744
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 745
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 749
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    .line 752
    .local v2, "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 740
    return-void
.end method

.method private onCaptureModeItemClicked(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
    .locals 14
    .param p1, "item"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 760
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v5, v6, :cond_1

    .line 762
    :cond_0
    return-void

    .line 761
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v5, v6, :cond_0

    .line 765
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 766
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    .line 768
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isCaptureUIEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 769
    return-void

    .line 772
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const-string/jumbo v6, "SwitchingMode"

    invoke-virtual {v5, v6, v9}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 774
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 775
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const-string/jumbo v6, "CaptureModesPanelOpen"

    invoke-virtual {v5, v6, v9}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    .line 777
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget-object v6, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 778
    .local v2, "newModeIndex":I
    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 780
    const/4 v1, 0x0

    .line 781
    .local v1, "needToSwitchMode":Z
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v5, :cond_5

    .line 782
    iget-object v5, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 783
    iput-boolean v10, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsClickChangeModeAnimationEnd:Z

    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, "offsetY":I
    sget v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    neg-int v5, v5

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    sub-int v6, v2, v6

    mul-int v3, v5, v6

    .line 787
    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    int-to-float v6, v3

    add-float v4, v5, v6

    .line 788
    .local v4, "targetPosition":F
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    const-string/jumbo v6, "y"

    const/4 v7, 0x2

    new-array v7, v7, [F

    iget v8, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    aput v8, v7, v10

    aput v4, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 790
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;

    invoke-direct {v5, p0, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;F)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 822
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 824
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 825
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 827
    const/4 v1, 0x1

    .line 828
    iput v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 832
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v3    # "offsetY":I
    .end local v4    # "targetPosition":F
    :cond_5
    if-eqz v1, :cond_6

    .line 835
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkPreviewCoverState()V

    .line 844
    iget-object v5, p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 758
    return-void

    .line 839
    :cond_6
    invoke-direct {p0, v9, v12, v13}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    .line 840
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 841
    return-void
.end method

.method private openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    .locals 12
    .param p1, "selectedCaptureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "duration"    # J
    .param p4, "isEasyMode"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1246
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    if-eqz v1, :cond_1

    .line 1247
    :cond_0
    return-void

    .line 1250
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkIsStateAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1251
    return-void

    .line 1253
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "openCaptureModesPanel() - Capture mode: "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1256
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_3

    .line 1257
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraGallery;->closeFilmstripDirectly()V

    .line 1259
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setActivated(Z)V

    .line 1260
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1263
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setupPanel()V

    .line 1266
    if-nez p4, :cond_4

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1270
    :cond_4
    :goto_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1274
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->cancelAnimation()V

    .line 1277
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1278
    .local v7, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz p4, :cond_7

    .line 1280
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1281
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1284
    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->initialContainerPositionY(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1285
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1286
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1359
    :cond_5
    :goto_1
    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1360
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1363
    iput-boolean v10, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z

    .line 1243
    return-void

    .line 1267
    .end local v7    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const-string/jumbo v2, "CaptureModesPanelOpen"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePanelOpenDisableUiHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1290
    .restart local v7    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1293
    .local v0, "animation_translation_px":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1294
    mul-int/lit8 v0, v0, -0x1

    .line 1296
    :cond_8
    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->initialContainerPositionY(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1298
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1300
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1337
    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1338
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1340
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1341
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1343
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1344
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1345
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_a

    .line 1347
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v1, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1305
    .end local v8    # "i":I
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1306
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1307
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1308
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1309
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 1312
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1313
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1314
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1315
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1316
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 1319
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1320
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1321
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1322
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1323
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 1326
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1327
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1328
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1329
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1330
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 1335
    :cond_9
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1351
    .restart local v8    # "i":I
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    .line 1354
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v1, :cond_5

    .line 1355
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v1, v2, v10}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    goto/16 :goto_1

    .line 1302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCaptureMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1386
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1389
    return-void

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1392
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCaptureMode() - Same capture mode, ignore"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1397
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    .line 1398
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1399
    return-void

    .line 1401
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_3

    .line 1402
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    .line 1404
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    if-nez v1, :cond_4

    .line 1406
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-interface {v1, v0, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1407
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCaptureMode() - Fail to change capture mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_SwitchModeUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1384
    return-void

    .line 1409
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchingCaptureMode:Z

    goto :goto_0
.end method

.method private setRotateContainerParentPadding(Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v7, 0x0

    .line 1430
    const/4 v2, 0x0

    .line 1431
    .local v2, "neededPaddingCount":I
    iget v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    sub-int/2addr v3, v4

    sget v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    div-int v1, v3, v4

    .line 1432
    .local v1, "itemsPaddingCount":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 1433
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v1, v3

    add-int/lit8 v2, v3, 0x1

    .line 1436
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1437
    .local v0, "isRtlLayout":Z
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1427
    :goto_0
    return-void

    .line 1440
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    sget v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1441
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1442
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingTop:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1445
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorLandPaddingLeft:I

    sget v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    mul-int/2addr v5, v2

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1446
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorLandPaddingLeft:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1447
    if-nez v0, :cond_1

    .line 1448
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1453
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    sget v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1454
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1455
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ButtonContainerMarginTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v7, v7, v7, v4}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1458
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorLandPaddingLeft:I

    sget v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    mul-int/2addr v5, v2

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1459
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorLandPaddingLeft:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    iget v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1460
    if-nez v0, :cond_2

    .line 1461
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 1463
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 1437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 5
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    const/4 v4, 0x0

    .line 1472
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v2, :cond_2

    .line 1474
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1475
    .restart local p1    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1477
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .line 1478
    .local v1, "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    if-eq v2, p1, :cond_1

    .line 1480
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1475
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v2, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 1470
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    :cond_2
    return-void
.end method

.method private setupPanel()V
    .locals 5

    .prologue
    .line 1494
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsPanelSetup:Z

    if-nez v3, :cond_0

    .line 1497
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v4, 0x7f09007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    .line 1498
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_TouchReceiver:Landroid/view/View;

    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1512
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v4, 0x7f090080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeIndicator:Landroid/widget/ImageView;

    .line 1513
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v4, 0x7f09007e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    .line 1514
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addAutoRotateView(Landroid/view/View;)V

    .line 1515
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_AdvSettingsButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$20;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$20;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v3, :cond_0

    .line 1527
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1528
    .local v0, "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1529
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1532
    .end local v0    # "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsPanelSetup:Z

    .line 1492
    return-void
.end method

.method private shiftCaptureModesPanelVertical(ZJ)V
    .locals 8
    .param p1, "isAnimationNeeded"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 1539
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v4, v5, :cond_1

    .line 1540
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shiftCaptureModesPanelVertical() - CaptureMode panel is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-virtual {v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , Do not shift panel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1544
    :cond_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 1545
    .local v1, "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1546
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 1548
    .restart local v1    # "direction":Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->updateIndexOfCaptureModePanel(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1572
    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    if-eqz v4, :cond_a

    .line 1574
    iget-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchToDefaultMode:Z

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchToSimpleCaptureMode(Z)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v3

    .line 1575
    .local v3, "selectedMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v3, :cond_8

    .line 1577
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 1578
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 1580
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 1581
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1583
    :cond_4
    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1584
    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1601
    :goto_0
    return-void

    .line 1550
    .end local v3    # "selectedMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "shiftCaptureModesPanelVertical() - CaptureModePanel boundary reached! Stop shift panel"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1553
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1554
    const/16 v4, 0x2716

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 1568
    :cond_6
    :goto_1
    return-void

    .line 1556
    :cond_7
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1557
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1559
    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$21;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$21;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1595
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v3    # "selectedMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_8
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1596
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1597
    :cond_9
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    .line 1598
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSwitchToDefaultMode:Z

    .line 1599
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "switchToSimpleCaptureMode - No simple capture mode slected"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    .end local v3    # "selectedMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_a
    if-eqz p1, :cond_b

    .line 1606
    invoke-direct {p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->animateCaptureModePanelPosition(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;J)V

    .line 1537
    :goto_2
    return-void

    .line 1609
    :cond_b
    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1610
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1611
    .local v2, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1612
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    .line 1613
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1615
    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    .locals 4
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    const/4 v3, 0x1

    .line 1628
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchCaptureMode() - Direction : "

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1631
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkIsStateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_LockPanel:Z

    if-eqz v0, :cond_1

    .line 1632
    :cond_0
    return-void

    .line 1634
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-eq p1, v0, :cond_2

    .line 1635
    return-void

    .line 1642
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v0, :cond_3

    .line 1644
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchCaptureMode() - No capture mode manager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    return-void

    .line 1648
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1650
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1651
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "CaptureModesPanel"

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1653
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1654
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsSimpleMode:Z

    .line 1656
    :cond_5
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v3, v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    .line 1626
    return-void
.end method

.method private switchToSimpleCaptureMode(Z)Lcom/oneplus/camera/capturemode/CaptureMode;
    .locals 7
    .param p1, "defaultPhotoMode"    # Z

    .prologue
    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz p1, :cond_0

    .line 1666
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v6, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v0

    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    return-object v0

    .line 1668
    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v5, v6, :cond_1

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    .line 1669
    .local v4, "requestType":Lcom/oneplus/camera/media/MediaType;
    :goto_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v5, :cond_3

    .line 1671
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1672
    .local v1, "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1674
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1675
    .local v3, "item":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-interface {v3}, Lcom/oneplus/camera/capturemode/CaptureMode;->isSimpleCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v5

    if-ne v5, v4, :cond_2

    .line 1676
    return-object v3

    .line 1668
    .end local v1    # "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v4    # "requestType":Lcom/oneplus/camera/media/MediaType;
    :cond_1
    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    .restart local v4    # "requestType":Lcom/oneplus/camera/media/MediaType;
    goto :goto_0

    .line 1672
    .restart local v1    # "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1679
    .end local v1    # "captureModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_3
    return-object v0
.end method

.method private updateIndexOfCaptureModePanel(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)Z
    .locals 3
    .param p1, "direction"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .prologue
    const/4 v2, 0x0

    .line 1686
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    if-ne p1, v0, :cond_0

    .line 1687
    return v2

    .line 1689
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-getcom-oneplus-camera-ui-CaptureModeSwitcher$GestureStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1705
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1691
    :pswitch_0
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    if-nez v0, :cond_1

    .line 1692
    return v2

    .line 1694
    :cond_1
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    goto :goto_0

    .line 1697
    :pswitch_1
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1698
    return v2

    .line 1700
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    goto :goto_0

    .line 1689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public closeCaptureModesPanelDirectly()V
    .locals 4

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$5;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 636
    :goto_0
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    goto :goto_0
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
    .line 658
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    return-object v0

    .line 660
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x5dc

    const-wide/16 v4, 0xc8

    const/16 v3, 0x2715

    const/4 v2, 0x1

    .line 668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 685
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 666
    :goto_0
    return-void

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v0, v1, :cond_1

    .line 673
    :cond_0
    invoke-static {p0, v3, v2, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 675
    :cond_1
    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    goto :goto_0

    .line 678
    :cond_2
    invoke-static {p0, v3, v2, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 682
    :pswitch_1
    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V

    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 853
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 856
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 857
    const-class v1, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 858
    const-class v1, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 859
    const-class v1, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    .line 860
    const-class v1, Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ReviewScreen;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    .line 863
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 864
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    .line 865
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    .line 866
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    .line 867
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingTop:I

    .line 868
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PanelContainerPaddingBottom:I

    .line 869
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ButtonContainerMarginTop:I

    .line 870
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ItemContainePaddingTop:I

    .line 871
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorPaddingTop:I

    .line 872
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IndicatorLandPaddingLeft:I

    .line 875
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v1, v2, v4}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    .line 880
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 881
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    .line 882
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 883
    .local v8, "expandCollapseDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 884
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addAutoRotateView(Landroid/view/View;)V

    .line 886
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->checkExpandCollapseState()V

    .line 887
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ExpandCollapseView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;

    .line 944
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 945
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    .line 946
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addAutoRotateView(Landroid/view/View;)V

    .line 947
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setupPanel()V

    .line 950
    .end local v8    # "expandCollapseDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 951
    .local v7, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I

    .line 953
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v3, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 954
    .local v9, "indexOfCaptureMode":I
    if-gez v9, :cond_2

    .line 955
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v3, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 956
    :cond_2
    const/4 v13, 0x0

    .line 957
    .local v13, "modeindex":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "mode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 959
    .local v10, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    const/4 v12, 0x0

    .line 960
    .local v12, "modePosition":I
    if-le v13, v9, :cond_3

    .line 961
    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    sub-int v2, v13, v9

    mul-int/2addr v1, v2

    mul-int/lit8 v12, v1, -0x1

    .line 965
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModePositionMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 963
    :cond_3
    sget v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->CAPTURE_MODE_ITEM_HEIGHT:I

    sub-int v2, v9, v13

    mul-int v12, v1, v2

    goto :goto_1

    .line 970
    .end local v10    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v12    # "modePosition":I
    :cond_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCoverStyle:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 973
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 984
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1010
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1026
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$11;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1052
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$12;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1071
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1084
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v1, :cond_5

    .line 1086
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$14;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1112
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_6

    .line 1114
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1163
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_7

    .line 1165
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$16;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$16;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1180
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    if-eqz v1, :cond_8

    .line 1182
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    sget-object v2, Lcom/oneplus/camera/ui/ReviewScreen;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/ReviewScreen;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 850
    :cond_8
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 1202
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 1203
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 1205
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModesPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1215
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1217
    const/4 v0, 0x1

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V

    .line 1218
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 1220
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    .line 1221
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 1222
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 1224
    :cond_2
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1233
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1236
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsPanelRotating:Z

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->rotateItemsRotationContainer()V

    .line 1230
    return-void
.end method

.method public rotateItemsRotationContainer()V
    .locals 4

    .prologue
    .line 1371
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x258

    :goto_0
    new-instance v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 1368
    return-void

    .line 1371
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 1419
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 1420
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Ljava/lang/Boolean;

    .line 1422
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
