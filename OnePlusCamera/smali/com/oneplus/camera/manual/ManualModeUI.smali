.class public final Lcom/oneplus/camera/manual/ManualModeUI;
.super Lcom/oneplus/camera/ModeUI;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/camera/manual/KnobViewChangedListener;
.implements Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/ManualModeUI$1;,
        Lcom/oneplus/camera/manual/ManualModeUI$2;,
        Lcom/oneplus/camera/manual/ManualModeUI$3;,
        Lcom/oneplus/camera/manual/ManualModeUI$4;,
        Lcom/oneplus/camera/manual/ManualModeUI$5;,
        Lcom/oneplus/camera/manual/ManualModeUI$6;,
        Lcom/oneplus/camera/manual/ManualModeUI$7;,
        Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;,
        Lcom/oneplus/camera/manual/ManualModeUI$Histogram;,
        Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;,
        Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;,
        Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
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
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-ControlTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-KnobView$RotationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-util-AspectRatioSwitchesValues:[I = null

.field private static final CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

.field private static final DISABLE_CAPTURE_UI:Ljava/lang/String; = "PhotoResolutionChange"

.field public static final EVENT_KNOB_VIEW_VALUE_UPDATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MANUAL_CUSTOM_SETTING_RESET:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final HISTOGRAM_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final HISTOGRAM_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final HISTOGRAM_POOL_CAPACITY:I = 0x4

.field public static final KNOBVIEW_PRECISION:F = 10000.0f

.field private static final LONG_EXPOSURE_TIME_THRESHOLD:J = 0x1dcd6500L

.field static final MSG_ACTIVE_PICTURE_INFO_UPDATED:I = 0x2711

.field private static final MSG_HISTOGRAM_UPDATED:I = 0x271a

.field private static final PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/manual/ControlType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_HISTOGRAM:Ljava/lang/String; = "Histogram"

.field public static final SETTINGS_KEY_IS_SIMPLE_UI_MODE_ENABLED:Ljava/lang/String; = "ManualModeUI.IsSimpleUIModeEnabled"

.field public static final SETTINGS_KEY_PICTURE_INFORMATION:Ljava/lang/String; = "PictureInformation"


# instance fields
.field private m_ActiveColorTempTextView:Landroid/widget/TextView;

.field private m_ActiveExpCompTextView:Landroid/widget/TextView;

.field private m_ActiveExpTimeTextView:Landroid/widget/TextView;

.field private m_ActiveISOTextView:Landroid/widget/TextView;

.field private m_BaseView:Landroid/widget/RelativeLayout;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

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

.field private m_CustomSettingsHandle:Lcom/oneplus/base/Handle;

.field private m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

.field private m_EnterFlags:Ljava/lang/Integer;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

.field private final m_GestureHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

.field private m_GestureHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field m_Histogram:[I

.field private m_HistogramView:Landroid/widget/ImageView;

.field private m_IndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_IndicatorTextView:Landroid/widget/TextView;

.field private m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field private m_InputAlloction:Landroid/renderscript/Allocation;

.field private m_IsActivePictureInfoUpdateScheduled:Z

.field private m_IsEntering:Z

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

.field private m_ManualModeCustomSettingId:I

.field private m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

.field private m_OutputAllocation:Landroid/renderscript/Allocation;

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

.field private m_PreviewInfoContainer:Landroid/view/View;

.field private final m_PreviewInfoContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

.field private m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

.field private final m_PreviewReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PreviewSizePropertyChangeCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_ReleaseHistogramResRunnable:Ljava/lang/Runnable;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_Rs:Landroid/renderscript/RenderScript;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

.field private m_Settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/base/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

.field private m_TargetCustomSettingId:I

.field private m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field private final m_UpdateActivePictureInfoRunnable:Ljava/lang/Runnable;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -get0()Lcom/oneplus/camera/ui/PreviewCover$Style;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/manual/ManualModeUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewSizePropertyChangeCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object v0
.end method

.method static synthetic -get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/ScriptIntrinsicHistogram;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    return-object v0
.end method

.method static synthetic -get18(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-RotationSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-manual-ControlTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ControlTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ControlTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/manual/ControlType;->values()[Lcom/oneplus/camera/manual/ControlType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ControlTypeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-manual-KnobView$RotationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-KnobView$RotationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-KnobView$RotationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/manual/KnobView$RotationState;->values()[Lcom/oneplus/camera/manual/KnobView$RotationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-KnobView$RotationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->values()[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->values()[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-util-AspectRatioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-util-AspectRatioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-util-AspectRatioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/util/AspectRatio;->values()[Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x10:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_3x2:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-util-AspectRatioSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/HandleSet;)Lcom/oneplus/base/HandleSet;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object p1
.end method

.method static synthetic -set10(Lcom/oneplus/camera/manual/ManualModeUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsActivePictureInfoUpdateScheduled:Z

    return p1
.end method

.method static synthetic -set11(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    return-object p1
.end method

.method static synthetic -set12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/PreviewCover;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object p1
.end method

.method static synthetic -set13(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set14(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic -set15(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    return-object p1
.end method

.method static synthetic -set16(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/scene/SceneManager;)Lcom/oneplus/camera/scene/SceneManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object p1
.end method

.method static synthetic -set17(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/ScriptIntrinsicHistogram;)Landroid/renderscript/ScriptIntrinsicHistogram;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    return-object p1
.end method

.method static synthetic -set18(Lcom/oneplus/camera/manual/ManualModeUI;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TargetCustomSettingId:I

    return p1
.end method

.method static synthetic -set19(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoExposureUI;)Lcom/oneplus/camera/ui/TouchAutoExposureUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    return-object p1
.end method

.method static synthetic -set20(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoFocusUI;)Lcom/oneplus/camera/ui/TouchAutoFocusUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    return-object p1
.end method

.method static synthetic -set21(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/FocusExposureIndicator;)Lcom/oneplus/camera/ui/FocusExposureIndicator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    return-object p1
.end method

.method static synthetic -set6(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/GestureDetector;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object p1
.end method

.method static synthetic -set7(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandlerHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set8(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/manual/ManualModeUI;Z)Z
    .locals 1
    .param p1, "left"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->onSlideLeftRight(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->clearPreviewInfo()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/content/Context;[BII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nv21"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/manual/ManualModeUI;->createHistogramY(Landroid/content/Context;[BII)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->onPreviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->resetDefaultManualSetting()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->retryToEnter()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/manual/ManualModeUI;Z)Z
    .locals 1
    .param p1, "up"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->onSlideUpDown(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->scheduleUpdatingActivePictureInfo()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 0
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/manual/ManualModeUI;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setUIEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showProcessingDialog()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateActivePictureInfo()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap30(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoPosition(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoVisibility()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/manual/ManualModeUI;)J
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSelectedExposureTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/manual/ManualModeUI;Z)V
    .locals 0
    .param p1, "startSelfTimer"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->addSelfTimerButtonsHandles(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Settings;)V
    .locals 0
    .param p1, "setting"    # Lcom/oneplus/base/Settings;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->applyManualCustomSettings(Lcom/oneplus/base/Settings;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 0
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "state"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsChangingManualCustomSetting"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    .line 105
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsKnobViewVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 109
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ManualControlType"

    const-class v2, Lcom/oneplus/camera/manual/ControlType;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v5, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 113
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ManualModeCustomSetting"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    .line 117
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ManualCustomSettingReset"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_MANUAL_CUSTOM_SETTING_RESET:Lcom/oneplus/base/EventKey;

    .line 121
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "KnobViewValueUpdated"

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_KNOB_VIEW_VALUE_UPDATED:Lcom/oneplus/base/EventKey;

    .line 137
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/manual/ControlType;

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    .line 143
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 147
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 148
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v8}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    .line 358
    const-string/jumbo v0, "PictureInformation"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string/jumbo v0, "Histogram"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 365
    const-string/jumbo v0, "Manual Mode UI"

    const-class v1, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 175
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 180
    iput v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 185
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Histogram:[I

    .line 187
    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    .line 188
    iput-boolean v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    .line 189
    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    .line 194
    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    .line 197
    iput-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    .line 205
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .line 228
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$2;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewSizePropertyChangeCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 246
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$3;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 260
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$4;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ReleaseHistogramResRunnable:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$5;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_UpdateActivePictureInfoRunnable:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$6;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 329
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/ManualModeUI$7;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 363
    return-void
.end method

.method private addCaptureButtonsHandles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v5, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 377
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 370
    :cond_1
    return-void
.end method

.method private addSelfTimerButtonsHandles(Z)V
    .locals 7
    .param p1, "startSelfTimer"    # Z

    .prologue
    const/4 v6, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    if-nez v1, :cond_1

    .line 388
    new-instance v1, Lcom/oneplus/base/HandleSet;

    new-array v2, v6, [Lcom/oneplus/base/Handle;

    invoke-direct {v1, v2}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 391
    :cond_1
    if-eqz p1, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f020262

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 396
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-interface {v2, v3, v0, v6}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 397
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f02001b

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 398
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-interface {v2, v3, v4, v6}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 400
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 401
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 380
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    return-void

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f020263

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0
.end method

.method private applyManualCustomSettings(Lcom/oneplus/base/Settings;)V
    .locals 13
    .param p1, "setting"    # Lcom/oneplus/base/Settings;

    .prologue
    const/4 v12, -0x1

    const v11, 0x461c4000    # 10000.0f

    const/4 v10, 0x0

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 412
    if-eqz p1, :cond_0

    .line 415
    const-string/jumbo v3, "Manual.ISO"

    invoke-virtual {p1, v3, v12}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v4, v3

    .line 416
    .local v4, "savedvalue":D
    const-string/jumbo v3, "Manual.ISO.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 417
    .local v2, "savedtick":I
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 418
    .local v0, "mappedValue":D
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    .line 419
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 424
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v3

    if-nez v3, :cond_3

    .line 426
    const-string/jumbo v3, "Manual.AWB"

    const/4 v6, 0x1

    invoke-virtual {p1, v3, v6}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v4, v3

    .line 427
    const-string/jumbo v3, "Manual.AWB.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 428
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 429
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    .line 430
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 446
    :goto_1
    const-string/jumbo v3, "Manual.EXPOSURE"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v3, v6, v7}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-double v4, v6

    .line 447
    const-string/jumbo v3, "Manual.EXPOSURE.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 448
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 449
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_5

    .line 450
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 455
    :goto_2
    const-string/jumbo v3, "Manual.EV"

    invoke-virtual {p1, v3, v10}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    float-to-double v4, v3

    .line 456
    const-string/jumbo v3, "Manual.EV.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 457
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 458
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_6

    .line 459
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 464
    :goto_3
    const-string/jumbo v3, "Manual.FOCUS"

    invoke-virtual {p1, v3, v12}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    float-to-double v4, v3

    .line 465
    const-string/jumbo v3, "Manual.FOCUS.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 466
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 467
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_7

    .line 468
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 473
    :goto_4
    const-string/jumbo v3, "RawCapture"

    invoke-virtual {p1, v3, v10}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setRaw(Z)V

    .line 474
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v3

    const-string/jumbo v6, "RawCapture"

    invoke-virtual {p1, v6, v10}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 410
    .end local v0    # "mappedValue":D
    .end local v2    # "savedtick":I
    .end local v4    # "savedvalue":D
    :cond_0
    return-void

    .line 421
    .restart local v0    # "mappedValue":D
    .restart local v2    # "savedtick":I
    .restart local v4    # "savedvalue":D
    :cond_1
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto/16 :goto_0

    .line 432
    :cond_2
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto/16 :goto_1

    .line 436
    :cond_3
    const-string/jumbo v3, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p1, v3, v10}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v4, v3

    .line 437
    const-string/jumbo v3, "Manual.COLOR.TEMPERATURE.TICK"

    invoke-virtual {p1, v3}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 438
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D

    move-result-wide v0

    .line 439
    sub-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    .line 440
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    goto/16 :goto_1

    .line 442
    :cond_4
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto/16 :goto_1

    .line 452
    :cond_5
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto/16 :goto_2

    .line 461
    :cond_6
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto/16 :goto_3

    .line 470
    :cond_7
    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V

    goto :goto_4
.end method

.method private changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "state"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateIndicatorContainerViewVisibility()V

    .line 555
    :cond_0
    return-void
.end method

.method private clearPreviewInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;

    invoke-direct {v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$Histogram;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_4
    return-void
.end method

.method private createControlViews()V
    .locals 17

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 586
    return-void

    .line 587
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 588
    return-void

    .line 591
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 592
    .local v7, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    .line 593
    const/4 v9, 0x0

    .line 594
    .local v9, "iconIndex":I
    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x0

    array-length v15, v14

    move v13, v2

    move v10, v9

    .end local v9    # "iconIndex":I
    .local v10, "iconIndex":I
    :goto_0
    if-ge v13, v15, :cond_6

    aget-object v8, v14, v13

    .line 596
    .local v8, "controlType":Lcom/oneplus/camera/manual/ControlType;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    if-ne v8, v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    move v9, v10

    .line 594
    .end local v10    # "iconIndex":I
    .restart local v9    # "iconIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move v10, v9

    .end local v9    # "iconIndex":I
    .restart local v10    # "iconIndex":I
    goto :goto_0

    .line 598
    :cond_3
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    if-ne v8, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 602
    :cond_4
    const v2, 0x7f030026

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v7, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 603
    .local v3, "container":Landroid/view/View;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f09012d

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 604
    .local v12, "width":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v11, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f09012e

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 606
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f09012e

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 607
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "iconIndex":I
    .restart local v9    # "iconIndex":I
    invoke-virtual {v2, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 610
    const v2, 0x7f0a00ce

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 611
    .local v6, "touchView":Landroid/view/View;
    const v2, 0x7f0a00cf

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 612
    .local v4, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f0a00d0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 615
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 616
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ControlTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v8}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v16

    aget v2, v2, v16

    packed-switch v2, :pswitch_data_0

    .line 661
    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :goto_2
    if-eqz v1, :cond_2

    .line 663
    const v2, 0x7f0d0091

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 664
    const v2, 0x7f0c0037

    invoke-virtual {v1, v7, v2}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 665
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/manual/ControlItem;->setControlItemListener(Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;)V

    goto/16 :goto_1

    .end local v3    # "container":Landroid/view/View;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "touchView":Landroid/view/View;
    .end local v9    # "iconIndex":I
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "width":I
    .restart local v10    # "iconIndex":I
    :cond_5
    move v9, v10

    .line 599
    .end local v10    # "iconIndex":I
    .restart local v9    # "iconIndex":I
    goto/16 :goto_1

    .line 620
    .restart local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    .restart local v3    # "container":Landroid/view/View;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "textView":Landroid/widget/TextView;
    .restart local v6    # "touchView":Landroid/view/View;
    .restart local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "width":I
    :pswitch_0
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 621
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200c2

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 627
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_1
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 628
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200be

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 634
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_2
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 635
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200c0

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 641
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_3
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 642
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200c1

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 648
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_4
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 649
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200bf

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 655
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_5
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 656
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f0200be

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 583
    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    .end local v3    # "container":Landroid/view/View;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "touchView":Landroid/view/View;
    .end local v8    # "controlType":Lcom/oneplus/camera/manual/ControlType;
    .end local v9    # "iconIndex":I
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "width":I
    .restart local v10    # "iconIndex":I
    :cond_6
    return-void

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createDefaultManualSettings()Lcom/oneplus/base/Settings;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 766
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    new-instance v0, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const-string/jumbo v2, "manual"

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 769
    .local v0, "defaultSetting":Lcom/oneplus/base/Settings;
    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 770
    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->resetCustomSettings(Lcom/oneplus/base/Settings;)V

    .line 771
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-object v0

    .line 775
    .end local v0    # "defaultSetting":Lcom/oneplus/base/Settings;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    return-object v1
.end method

.method private createHistogramY(Landroid/content/Context;[BII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nv21"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 677
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    if-nez v3, :cond_0

    .line 678
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    .line 681
    :cond_0
    mul-int v1, p3, p4

    .line 682
    .local v1, "pixelCount":I
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    if-nez v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    .line 685
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, p2}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    .line 687
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    if-nez v3, :cond_2

    .line 688
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/16 v5, 0x100

    invoke-static {v3, v4, v5}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    .line 691
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    if-nez v3, :cond_3

    .line 692
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Rs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicHistogram;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicHistogram;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    .line 695
    :cond_3
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->obtainEmptyHistogram()[I

    move-result-object v0

    .line 696
    .local v0, "histogram":[I
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicHistogram;->setOutput(Landroid/renderscript/Allocation;)V

    .line 697
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ScriptHistogram:Landroid/renderscript/ScriptIntrinsicHistogram;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_InputAlloction:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/renderscript/Allocation;)V

    .line 698
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 701
    const/16 v3, 0x271a

    invoke-static {p0, v3, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v0    # "histogram":[I
    .end local v1    # "pixelCount":I
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "tr":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createHistogramY() - Failed to create histogram"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createKnobViews()V
    .locals 17

    .prologue
    .line 713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    .line 714
    return-void

    .line 717
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 718
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090123

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 719
    .local v9, "knobHeight":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090051

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 720
    .local v3, "captureBarHeight":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900db

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 723
    .local v13, "optionPanelHeight":I
    new-instance v1, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;

    invoke-direct {v1, v2}, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;-><init>(Landroid/content/Context;)V

    .line 724
    .local v1, "awbKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v6, Lcom/oneplus/camera/manual/ExposureTimeKnobView;

    invoke-direct {v6, v2}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;-><init>(Landroid/content/Context;)V

    .line 725
    .local v6, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v7, Lcom/oneplus/camera/manual/FocusKnobView;

    invoke-direct {v7, v2}, Lcom/oneplus/camera/manual/FocusKnobView;-><init>(Landroid/content/Context;)V

    .line 726
    .local v7, "focusKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v8, Lcom/oneplus/camera/manual/ISOKnobView;

    invoke-direct {v8, v2}, Lcom/oneplus/camera/manual/ISOKnobView;-><init>(Landroid/content/Context;)V

    .line 727
    .local v8, "isoKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v5, Lcom/oneplus/camera/manual/EVKnobView;

    invoke-direct {v5, v2}, Lcom/oneplus/camera/manual/EVKnobView;-><init>(Landroid/content/Context;)V

    .line 728
    .local v5, "evKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v4, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;

    invoke-direct {v4, v2}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;-><init>(Landroid/content/Context;)V

    .line 731
    .local v4, "colorTemperatureKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v12, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 741
    .local v12, "knobviewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 742
    add-int v14, v3, v13

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "knobview$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/manual/KnobView;

    .line 745
    .local v10, "knobview":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v10, v12}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 747
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 752
    .end local v10    # "knobview":Lcom/oneplus/camera/manual/KnobView;
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v15, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    sget-object v16, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method private getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 2761
    const/4 v1, 0x0

    .line 2762
    .local v1, "resultValue":I
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 2764
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2765
    .local v0, "knobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 2766
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->getTick()I

    move-result v1

    .line 2771
    .end local v0    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_0
    :goto_0
    return v1

    .line 2769
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getKnobViewTick() - m_KnobViews is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D
    .locals 5
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 2743
    const-wide/16 v2, 0x0

    .line 2745
    .local v2, "value":D
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 2747
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2748
    .local v0, "knobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 2749
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    .line 2754
    .end local v0    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_0
    :goto_0
    return-wide v2

    .line 2752
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getKnobViewValue() - m_KnobViews is null"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getManualSettings(I)Lcom/oneplus/base/Settings;
    .locals 2
    .param p1, "settingsId"    # I

    .prologue
    .line 817
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method private getSelectedExposureTimeNanos()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 792
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 793
    return-wide v4

    .line 794
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 795
    .local v0, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    if-nez v0, :cond_1

    .line 796
    return-wide v4

    .line 797
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    .line 798
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v1, :cond_2

    .line 799
    iget-wide v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v2, v2

    return-wide v2

    .line 800
    :cond_2
    return-wide v4
.end method

.method private hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 3
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 850
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 853
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 847
    return-void

    .line 853
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideProcessingDialog()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 858
    return-void
.end method

.method private hideUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideUI() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 871
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 865
    :cond_0
    return-void
.end method

.method private isColorTemperatureSupported()Z
    .locals 3

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 880
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 881
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_COLOR_TEMPERATURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isColorTemperatureSupported() - camera is null."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/4 v1, 0x0

    return v1
.end method

.method private isEvDisabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getIso()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getExposure()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isReadyToEnter()Z
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    return v0

    .line 925
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mappingTickToValue(Lcom/oneplus/camera/manual/ControlType;I)D
    .locals 5
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "savedTick"    # I

    .prologue
    .line 932
    const-wide/16 v2, 0x0

    .line 933
    .local v2, "resultValue":D
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 936
    .local v0, "knobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0, p2}, Lcom/oneplus/camera/manual/KnobView;->getKnobValueFromTick(I)D

    move-result-wide v2

    .line 942
    .end local v0    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_0
    :goto_0
    return-wide v2

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mappingTickToValue() - m_KnobViews is null"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static obtainEmptyHistogram()[I
    .locals 3

    .prologue
    .line 950
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    monitor-enter v2

    .line 952
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "histogram":[I
    monitor-exit v2

    .line 954
    if-nez v0, :cond_0

    .line 955
    const/16 v1, 0x100

    new-array v0, v1, [I

    .line 956
    :cond_0
    return-object v0

    .line 950
    .end local v0    # "histogram":[I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 968
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 969
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoVisibility()V

    .line 961
    :cond_0
    return-void
.end method

.method private onHistogramUpdated([I)V
    .locals 6
    .param p1, "histogram"    # [I

    .prologue
    .line 1167
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 1169
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onHistogramUpdated() - Imageview is not ready."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void

    .line 1172
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1173
    return-void

    .line 1174
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1183
    return-void

    .line 1186
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    invoke-direct {v0}, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;-><init>()V

    .line 1188
    .local v0, "data":Lcom/oneplus/camera/manual/ManualModeUI$Histogram;
    const/16 v2, 0xff

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1190
    iget-object v3, v0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->Y:[I

    aget v4, p1, v2

    aput v4, v3, v2

    .line 1191
    iget v3, v0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->totalPixelCount:I

    iget-object v4, v0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->Y:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->totalPixelCount:I

    .line 1188
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1194
    :cond_2
    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$Histogram;)V

    .line 1195
    .local v1, "drawable":Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    return-void

    .line 1174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 2
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 1560
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1563
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    goto :goto_0

    .line 1566
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TargetCustomSettingId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1570
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1571
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 1573
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TargetCustomSettingId:I

    goto :goto_0

    .line 1560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPreviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 1583
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v6

    .line 1584
    .local v6, "pictureSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 1585
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1586
    .local v3, "nv21":[B
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1587
    .local v4, "width":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 1588
    .local v5, "height":I
    sget-object v7, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$33;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/ManualModeUI$33;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/content/Context;[BII)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1596
    return-void
.end method

.method private onSlideLeftRight(Z)Z
    .locals 4
    .param p1, "left"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1740
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1741
    return v3

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "ManualModeUI.IsSimpleUIModeEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1745
    return v3

    .line 1749
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1758
    :pswitch_0
    return v3

    .line 1752
    :pswitch_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1762
    :goto_0
    if-eqz v0, :cond_4

    .line 1764
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1765
    return v3

    .line 1752
    :cond_2
    const/4 v0, 0x1

    .local v0, "enter":Z
    goto :goto_0

    .line 1755
    .end local v0    # "enter":Z
    :pswitch_2
    move v0, p1

    .line 1756
    .local v0, "enter":Z
    goto :goto_0

    .line 1766
    .end local v0    # "enter":Z
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->enterSimpleUIMode()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    .line 1776
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 1770
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1771
    return v3

    .line 1772
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 1749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSlideUpDown(Z)Z
    .locals 4
    .param p1, "up"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1784
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    return v3

    .line 1788
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "ManualModeUI.IsSimpleUIModeEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1789
    return v3

    .line 1793
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1802
    :pswitch_0
    return v3

    .line 1796
    :pswitch_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1806
    :goto_0
    if-eqz v0, :cond_4

    .line 1808
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1809
    return v3

    .line 1796
    :cond_2
    const/4 v0, 0x1

    .local v0, "enter":Z
    goto :goto_0

    .line 1799
    .end local v0    # "enter":Z
    :pswitch_2
    move v0, p1

    .line 1800
    .local v0, "enter":Z
    goto :goto_0

    .line 1810
    .end local v0    # "enter":Z
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->enterSimpleUIMode()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    .line 1820
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 1814
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1815
    return v3

    .line 1816
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 1793
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static recycleHistogram([I)V
    .locals 3
    .param p0, "histogram"    # [I

    .prologue
    .line 1827
    if-nez p0, :cond_0

    .line 1828
    return-void

    .line 1829
    :cond_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    monitor-enter v1

    .line 1831
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 1832
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1825
    return-void

    .line 1829
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetCustomSettings(Lcom/oneplus/base/Settings;)V
    .locals 5
    .param p1, "setting"    # Lcom/oneplus/base/Settings;

    .prologue
    const/4 v4, 0x0

    .line 1868
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetCustomSettings() - Start, setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    if-nez p1, :cond_0

    .line 1870
    return-void

    .line 1872
    :cond_0
    const-string/jumbo v0, "Manual.ISO"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1874
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1875
    const-string/jumbo v0, "Manual.AWB"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1879
    :goto_0
    const-string/jumbo v0, "Manual.EXPOSURE"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    const-string/jumbo v0, "Manual.EV"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1883
    const-string/jumbo v0, "Manual.FOCUS"

    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1866
    return-void

    .line 1877
    :cond_1
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resetDefaultManualSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1840
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetDefaultManualSetting()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 1842
    .local v0, "oldSettingId":I
    iput v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 1845
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    .line 1846
    .local v1, "oldsetting":Lcom/oneplus/base/Settings;
    instance-of v3, v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    if-eqz v3, :cond_0

    .line 1847
    check-cast v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    .end local v1    # "oldsetting":Lcom/oneplus/base/Settings;
    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->abandonUnCommittedValues()V

    .line 1850
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createDefaultManualSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    .line 1853
    .local v2, "setting":Lcom/oneplus/base/Settings;
    const-string/jumbo v3, "SelfTimer.Back"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->resetCustomSettings(Lcom/oneplus/base/Settings;)V

    .line 1856
    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1859
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    .line 1862
    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_MANUAL_CUSTOM_SETTING_RESET:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1838
    return-void
.end method

.method private retryToEnter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1892
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->onEnter(I)Z

    .line 1895
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 1890
    :cond_0
    return-void
.end method

.method private scheduleUpdatingActivePictureInfo()V
    .locals 2

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsActivePictureInfoUpdateScheduled:Z

    if-eqz v0, :cond_1

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsActivePictureInfoUpdateScheduled:Z

    .line 1942
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_UpdateActivePictureInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setControlItemText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1961
    :cond_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlItem;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 1958
    return-void
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 1971
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 1969
    return-void
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    .line 1975
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v2, p1, :cond_0

    .line 1976
    return-void

    .line 1978
    :cond_0
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1981
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 1982
    .local v1, "oldControlType":Lcom/oneplus/camera/manual/ControlType;
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 1983
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V

    .line 1985
    if-eqz p2, :cond_2

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    .line 1986
    :goto_0
    if-eqz p2, :cond_3

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 1984
    :goto_1
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 1987
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 1988
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    .line 1991
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    if-eq v2, v3, :cond_1

    .line 1993
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1995
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    .line 1996
    .local v0, "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v0, :cond_4

    .line 1997
    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 1973
    .end local v0    # "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_1
    :goto_2
    return-void

    .line 1985
    :cond_2
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    goto :goto_0

    .line 1986
    :cond_3
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    goto :goto_1

    .line 1999
    .restart local v0    # "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setControlType() - KnobItemIfo is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setFloatingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2010
    return-void

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    return-void
.end method

.method private setFloatingTextViewVisibility(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2021
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 2022
    return-void

    .line 2025
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 2026
    .local v0, "yMove":F
    if-eqz p1, :cond_1

    .line 2028
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2043
    :goto_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 2044
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

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$34;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$34;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2018
    :goto_1
    return-void

    .line 2031
    :pswitch_0
    return-void

    .line 2033
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2034
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2035
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 2036
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 2040
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 2055
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2069
    :goto_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 2070
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

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$35;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$35;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2058
    :pswitch_3
    return-void

    .line 2060
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2061
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 2062
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 2066
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 2028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 2055
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private setKnobViewByTick(Lcom/oneplus/camera/manual/ControlType;I)V
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "tick"    # I

    .prologue
    .line 2725
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 2727
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2728
    .local v1, "tempType":Lcom/oneplus/camera/manual/ControlType;
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2730
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2731
    .local v0, "knobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 2732
    invoke-virtual {v0, p2}, Lcom/oneplus/camera/manual/KnobView;->setValueByTick(I)V

    .line 2734
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2723
    .end local v0    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v1    # "tempType":Lcom/oneplus/camera/manual/ControlType;
    :goto_0
    return-void

    .line 2737
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setKnobViewByTick() - m_KnobViews is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "value"    # D

    .prologue
    .line 2708
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 2710
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2711
    .local v1, "tempType":Lcom/oneplus/camera/manual/ControlType;
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2713
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2714
    .local v0, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/camera/manual/KnobView;->setTickByValue(D)V

    .line 2715
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 2706
    .end local v0    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v1    # "tempType":Lcom/oneplus/camera/manual/ControlType;
    :goto_0
    return-void

    .line 2718
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setKnobViewByValue() - m_KnobViews is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setManualModeCustomSetting(I)Z
    .locals 8
    .param p1, "settingId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2086
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setManualModeCustomSetting() - settingId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    if-gez p1, :cond_0

    .line 2089
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setManualModeCustomSetting() - settingId is invalid."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    return v7

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2093
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    if-nez v0, :cond_1

    .line 2094
    return v7

    .line 2096
    :cond_1
    iget v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 2097
    .local v2, "oldSettingId":I
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 2100
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    .line 2103
    .local v3, "setting":Lcom/oneplus/base/Settings;
    if-nez v3, :cond_2

    .line 2105
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setManualModeCustomSetting() - Error settings is null! id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    return v7

    .line 2109
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setManualModeCustomSetting() - setting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/oneplus/base/Settings;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    invoke-direct {p0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setSettingToActivity(Lcom/oneplus/base/Settings;)Z

    move-result v1

    .line 2115
    .local v1, "isNeedStartPreview":Z
    invoke-direct {p0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->applyManualCustomSettings(Lcom/oneplus/base/Settings;)V

    .line 2118
    if-eqz v1, :cond_3

    .line 2119
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 2120
    :cond_3
    sget-object v4, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2121
    sget-object v4, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2122
    const/4 v4, 0x1

    return v4
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 2160
    if-nez p1, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    return-void

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI$36;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2158
    return-void
.end method

.method private setSettingToActivity(Lcom/oneplus/base/Settings;)Z
    .locals 5
    .param p1, "setting"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 2129
    const/4 v2, 0x1

    .line 2130
    .local v2, "isNeedStartPreview":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2131
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_0

    .line 2132
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_2

    .line 2135
    :cond_0
    const/4 v2, 0x0

    .line 2142
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    if-eqz v3, :cond_3

    .line 2143
    :cond_1
    invoke-virtual {v0, p1}, Lcom/oneplus/camera/CameraActivity;->setSettings(Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 2148
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CustomSettingsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2151
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CustomSettingsHandle:Lcom/oneplus/base/Handle;

    .line 2153
    return v2

    .line 2133
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2138
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    goto :goto_0

    .line 2145
    :cond_3
    const/4 v1, 0x0

    .local v1, "handle":Lcom/oneplus/base/Handle;
    goto :goto_1
.end method

.method private setUIEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setUIEnabled(ZLcom/oneplus/camera/manual/ControlType;)V

    .line 2178
    return-void
.end method

.method private setUIEnabled(ZLcom/oneplus/camera/manual/ControlType;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2186
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 2187
    :cond_0
    return-void

    .line 2189
    :cond_1
    if-nez p2, :cond_6

    .line 2191
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "knobView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    .line 2192
    .local v2, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v2, p1}, Lcom/oneplus/camera/manual/KnobView;->setEnabled(Z)V

    goto :goto_0

    .line 2194
    .end local v2    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlItem;

    .line 2196
    .local v0, "item":Lcom/oneplus/camera/manual/ControlItem;
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ControlItem;->getControlType()Lcom/oneplus/camera/manual/ControlType;

    move-result-object v4

    sget-object v7, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    if-ne v4, v7, :cond_5

    .line 2198
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEvDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/manual/ControlItem;->setTouchEnabled(Z)V

    .line 2199
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEvDisabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/manual/ControlItem;->setUIEnabled(Z)V

    goto :goto_1

    :cond_3
    move v4, v6

    .line 2198
    goto :goto_2

    :cond_4
    move v4, v6

    .line 2199
    goto :goto_3

    .line 2202
    :cond_5
    invoke-virtual {v0, p1}, Lcom/oneplus/camera/manual/ControlItem;->setTouchEnabled(Z)V

    goto :goto_1

    .line 2207
    .end local v0    # "item":Lcom/oneplus/camera/manual/ControlItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "knobView$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v4, p1}, Lcom/oneplus/camera/manual/KnobView;->setEnabled(Z)V

    .line 2208
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/ControlItem;

    invoke-virtual {v4, p1}, Lcom/oneplus/camera/manual/ControlItem;->setTouchEnabled(Z)V

    .line 2209
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/ControlItem;

    invoke-virtual {v4, p1}, Lcom/oneplus/camera/manual/ControlItem;->setUIEnabled(Z)V

    .line 2184
    :cond_7
    return-void
.end method

.method private showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 4
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    const/4 v3, 0x0

    .line 2217
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 2218
    return-void

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2221
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 2222
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 2215
    return-void
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    .line 2229
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v1, :cond_0

    .line 2230
    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 2231
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_1

    .line 2233
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2234
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d009a

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 2227
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showUI()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2244
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2245
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2246
    .local v7, "contentView":Landroid/view/View;
    if-nez v7, :cond_0

    .line 2247
    return-void

    .line 2250
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 2252
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showUI() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 2254
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2255
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2256
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2258
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 2259
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 2260
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoRotation()V

    .line 2261
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoVisibility()V

    .line 2262
    return-void

    .line 2265
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showUI() - Setup"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const v1, 0x7f0a0025

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    .line 2269
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    .line 2270
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a00cb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    .line 2271
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a00cd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    .line 2272
    const v1, 0x7f0a00a4

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 2273
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    .line 2274
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    .line 2275
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    .line 2276
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    .line 2277
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    .line 2278
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    .line 2279
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    .line 2282
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createControlViews()V

    .line 2283
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2284
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 2287
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createKnobViews()V

    .line 2290
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 2293
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 2296
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 2299
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoVisibility()V

    .line 2302
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoRotation()V

    .line 2305
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;

    invoke-direct {v2, v6}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$Histogram;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2308
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "controlItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/manual/ControlItem;

    .line 2309
    .local v8, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    invoke-virtual {v8}, Lcom/oneplus/camera/manual/ControlItem;->getControlContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_0

    .line 2311
    .end local v8    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    .line 2241
    return-void
.end method

.method private updateActivePictureInfo()V
    .locals 20

    .prologue
    .line 2319
    const/4 v3, 0x0

    .line 2320
    .local v3, "colorTemp":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 2321
    .local v6, "exposureComp":Ljava/lang/Float;
    const/4 v7, 0x0

    .line 2322
    .local v7, "exposureTime":Ljava/lang/Long;
    const/4 v8, 0x0

    .line 2323
    .local v8, "iso":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    .line 2324
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v2, :cond_0

    .line 2326
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "colorTemp":Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 2327
    .local v3, "colorTemp":Ljava/lang/Integer;
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "exposureComp":Ljava/lang/Float;
    check-cast v6, Ljava/lang/Float;

    .line 2328
    .local v6, "exposureComp":Ljava/lang/Float;
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "exposureTime":Ljava/lang/Long;
    check-cast v7, Ljava/lang/Long;

    .line 2329
    .local v7, "exposureTime":Ljava/lang/Long;
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_ACTIVE_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "iso":Ljava/lang/Integer;
    check-cast v8, Ljava/lang/Integer;

    .line 2333
    .end local v3    # "colorTemp":Ljava/lang/Integer;
    .end local v6    # "exposureComp":Ljava/lang/Float;
    .end local v7    # "exposureTime":Ljava/lang/Long;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 2335
    if-eqz v3, :cond_5

    .line 2336
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "K"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2342
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 2344
    if-nez v6, :cond_6

    .line 2345
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2353
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 2355
    if-eqz v7, :cond_a

    .line 2357
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2358
    .local v10, "nanos":J
    const-wide/32 v12, 0x17d78400

    cmp-long v9, v10, v12

    if-ltz v9, :cond_9

    .line 2360
    const-wide/32 v12, 0x3b9aca00

    rem-long v12, v10, v12

    const-wide/32 v14, 0x5f5e100

    cmp-long v9, v12, v14

    if-ltz v9, :cond_8

    .line 2361
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%.1f\""

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    long-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide v18, 0x41cdcd6500000000L    # 1.0E9

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2376
    .end local v10    # "nanos":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 2378
    if-eqz v8, :cond_b

    .line 2379
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ISO"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2316
    :cond_4
    :goto_3
    return-void

    .line 2338
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveColorTempTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2346
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v12, 0x3c23d70a    # 0.01f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_7

    .line 2347
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%+.1fEV"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2349
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpCompTextView:Landroid/widget/TextView;

    const-string/jumbo v12, "0.0EV"

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2363
    .restart local v10    # "nanos":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v14, 0x3b9aca00

    div-long v14, v10, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2367
    :cond_9
    long-to-double v12, v10

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double v12, v14, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 2368
    .local v4, "d":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "1/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2372
    .end local v4    # "d":J
    .end local v10    # "nanos":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveExpTimeTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2381
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ActiveISOTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V
    .locals 4
    .param p1, "oldControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 2389
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 2390
    return-void

    .line 2392
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2393
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v2, 0x0

    .line 2394
    .local v2, "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    const/4 v1, 0x0

    .line 2395
    .local v1, "newItem":Lcom/oneplus/camera/manual/ControlItem;
    if-eqz p1, :cond_1

    .line 2396
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v2, Lcom/oneplus/camera/manual/ControlItem;

    .line 2397
    :cond_1
    if-eqz p2, :cond_2

    .line 2398
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v1, Lcom/oneplus/camera/manual/ControlItem;

    .line 2399
    :cond_2
    if-eqz v2, :cond_3

    .line 2401
    const v3, 0x7f0c0037

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 2402
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    .line 2404
    :cond_3
    if-eqz v1, :cond_4

    .line 2406
    const v3, 0x7f0c0039

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 2407
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    .line 2387
    :cond_4
    return-void
.end method

.method private updateIndicatorContainerViewVisibility()V
    .locals 5

    .prologue
    .line 2415
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 2416
    return-void

    .line 2418
    :cond_0
    const/4 v0, 0x0

    .line 2419
    .local v0, "hasVisible":Z
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 2421
    .local v1, "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-ne v1, v3, :cond_1

    .line 2422
    const/4 v0, 0x1

    goto :goto_0

    .line 2424
    .end local v1    # "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :cond_2
    if-eqz v0, :cond_3

    .line 2425
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2413
    :goto_1
    return-void

    .line 2427
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateKnobItemsSelfRotation()V
    .locals 3

    .prologue
    .line 2434
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 2436
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2437
    .local v0, "view":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/manual/KnobView;->setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 2432
    .end local v0    # "view":Lcom/oneplus/camera/manual/KnobView;
    .end local v1    # "view$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateKnobViewBackgroundColor()V
    .locals 5

    .prologue
    .line 2453
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 2454
    return-void

    .line 2456
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2457
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v4, 0x7f08005a

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getColor(I)I

    move-result v1

    .line 2458
    .local v1, "color":I
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "knobView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    .line 2459
    .local v2, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v2, v1}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewBackgroundColor(I)V

    goto :goto_0

    .line 2451
    .end local v2    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_1
    return-void
.end method

.method private updateKnobViewPosition()V
    .locals 18

    .prologue
    .line 2467
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v15, :cond_0

    .line 2468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    .line 2467
    if-nez v15, :cond_0

    .line 2469
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-nez v15, :cond_1

    .line 2471
    :cond_0
    return-void

    .line 2470
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v15, :cond_0

    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 2474
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090051

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2477
    .local v9, "newMarginBottom":I
    sget-object v15, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v15}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 2478
    .local v13, "previewSize":Landroid/util/Size;
    invoke-static {v13}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v14

    .line 2479
    .local v14, "ratio":Lcom/oneplus/util/AspectRatio;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-util-AspectRatioSwitchesValues()[I

    move-result-object v15

    invoke-virtual {v14}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 2488
    :goto_0
    const/4 v3, 0x0

    .line 2489
    .local v3, "hasChange":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "knobView$iterator":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/manual/KnobView;

    .line 2491
    .local v5, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v5}, Lcom/oneplus/camera/manual/KnobView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2492
    .local v11, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2493
    .local v10, "oldMarginBottom":I
    if-eq v10, v9, :cond_2

    .line 2495
    iput v9, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2496
    const/4 v3, 0x1

    .line 2504
    .end local v5    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v10    # "oldMarginBottom":I
    .end local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2505
    .local v12, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090123

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2506
    .local v4, "knobHeight":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090133

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2507
    .local v7, "marginToKnobView":I
    add-int v15, v9, v4

    add-int v8, v15, v7

    .line 2508
    .local v8, "newIndicatorMarginBottom":I
    iget v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v15, v8, :cond_3

    .line 2510
    iput v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2511
    const/4 v3, 0x1

    .line 2515
    :cond_3
    if-eqz v3, :cond_4

    .line 2516
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2465
    :cond_4
    return-void

    .line 2483
    .end local v3    # "hasChange":Z
    .end local v4    # "knobHeight":I
    .end local v6    # "knobView$iterator":Ljava/util/Iterator;
    .end local v7    # "marginToKnobView":I
    .end local v8    # "newIndicatorMarginBottom":I
    .end local v12    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
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

    .line 2484
    goto/16 :goto_0

    .line 2479
    nop

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
    .line 2523
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 2525
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/manual/ManualModeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2526
    return-void

    .line 2529
    :cond_0
    const/4 v3, 0x0

    .line 2530
    .local v3, "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    const/4 v0, 0x0

    .line 2531
    .local v0, "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz p1, :cond_1

    .line 2532
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v3, Lcom/oneplus/camera/manual/KnobView;

    .line 2533
    :cond_1
    if-eqz p2, :cond_2

    .line 2534
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 2535
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090123

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 2536
    .local v5, "yMove":I
    if-eqz v3, :cond_4

    .line 2539
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->cancelTouchEvent()V

    .line 2542
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p4}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2579
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2580
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 2581
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 2584
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 2585
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/manual/ManualModeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2587
    :cond_4
    if-eqz v0, :cond_6

    .line 2590
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 2631
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2632
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 2633
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 2636
    :cond_5
    :goto_1
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/manual/ManualModeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2521
    :cond_6
    return-void

    .line 2545
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 2546
    .local v4, "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v4}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 2561
    :goto_2
    :pswitch_1
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v4, v6, :cond_3

    .line 2563
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 2564
    move-object v2, v3

    .line 2565
    .local v2, "oldFinalKnobView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

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

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$37;

    invoke-direct {v7, p0, p1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$37;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2551
    .end local v2    # "oldFinalKnobView":Landroid/view/View;
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 2552
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 2553
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 2554
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_2

    .line 2558
    :pswitch_3
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 2593
    .end local v4    # "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_4
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 2594
    .local v1, "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 2610
    :goto_3
    :pswitch_5
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v1, v6, :cond_5

    .line 2612
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 2613
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

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$38;

    invoke-direct {v7, p0, p2}, Lcom/oneplus/camera/manual/ManualModeUI$38;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 2599
    :pswitch_6
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 2600
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 2601
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 2602
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 2603
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_3

    .line 2607
    :pswitch_7
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 2625
    .end local v1    # "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_8
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2626
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2627
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 2542
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 2590
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
    .end packed-switch

    .line 2546
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2594
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private updatePreviewInfoPosition(Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 2684
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v5, :cond_0

    .line 2685
    return-void

    .line 2687
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePreviewInfoPosition() - previewBounds.top : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2690
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f09013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2691
    .local v1, "minMarginTop":I
    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2692
    .local v0, "defaultMarginTop":I
    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2693
    .local v3, "previewBoundsTop":I
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2694
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v5, v3, v1

    if-lt v0, v5, :cond_1

    .line 2696
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2702
    :goto_0
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->requestLayout()V

    .line 2682
    return-void

    .line 2700
    :cond_1
    add-int v5, v3, v1

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private updatePreviewInfoRotation()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoRotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 2443
    :cond_0
    return-void
.end method

.method private updatePreviewInfoVisibility()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2643
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 2644
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v8

    .line 2645
    .local v8, "settings":Lcom/oneplus/base/Settings;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2646
    .local v7, "isSimpleUIMode":Z
    const-string/jumbo v1, "PictureInformation"

    invoke-virtual {v8, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2647
    if-eqz v0, :cond_5

    .line 2648
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2646
    if-eqz v1, :cond_5

    .line 2649
    if-eqz v7, :cond_4

    const/4 v10, 0x0

    .line 2650
    .local v10, "showPictureInfo":Z
    :goto_0
    const-string/jumbo v1, "Histogram"

    invoke-virtual {v8, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2651
    if-eqz v7, :cond_6

    const/4 v9, 0x0

    .line 2652
    .local v9, "showHistogram":Z
    :goto_1
    if-eqz v7, :cond_8

    const-wide/16 v4, 0x12c

    .line 2655
    .local v4, "drationFadeout":J
    :goto_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2657
    if-eqz v9, :cond_9

    .line 2658
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v11}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2664
    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 2666
    if-eqz v10, :cond_a

    .line 2667
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v11}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2673
    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2675
    if-nez v10, :cond_2

    if-eqz v9, :cond_b

    .line 2676
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v11}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 2640
    :cond_3
    :goto_5
    return-void

    .line 2649
    .end local v4    # "drationFadeout":J
    .end local v9    # "showHistogram":Z
    .end local v10    # "showPictureInfo":Z
    :cond_4
    const/4 v10, 0x1

    .restart local v10    # "showPictureInfo":Z
    goto :goto_0

    .line 2646
    .end local v10    # "showPictureInfo":Z
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "showPictureInfo":Z
    goto :goto_0

    .line 2651
    :cond_6
    const/4 v9, 0x1

    .restart local v9    # "showHistogram":Z
    goto :goto_1

    .line 2650
    .end local v9    # "showHistogram":Z
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "showHistogram":Z
    goto :goto_1

    .line 2652
    :cond_8
    const-wide/16 v4, 0x0

    .restart local v4    # "drationFadeout":J
    goto :goto_2

    .line 2660
    :cond_9
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_HistogramView:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_3

    .line 2669
    :cond_a
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoValuesContainer:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_4

    .line 2678
    :cond_b
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewInfoContainer:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_5
.end method


# virtual methods
.method public changeCustomSettings(I)V
    .locals 9
    .param p1, "settingId"    # I

    .prologue
    const/4 v8, 0x0

    .line 486
    iget v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    if-ne p1, v5, :cond_0

    .line 488
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "changeCustomSettings() - same settings! "

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v5, v6, :cond_1

    .line 494
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "changeCustomSettings() - Capture state is not ready."

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_1
    sget-object v5, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 500
    iget v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    .line 501
    .local v4, "oldSettingId":I
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    .line 502
    .local v3, "oldSetting":Lcom/oneplus/base/Settings;
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    .line 504
    .local v1, "newSetting":Lcom/oneplus/base/Settings;
    if-nez v1, :cond_2

    .line 506
    if-lez p1, :cond_8

    .line 508
    new-instance v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    .end local v1    # "newSetting":Lcom/oneplus/base/Settings;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ManualCustom_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v8}, Lcom/oneplus/camera/manual/ManualCustomSettings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 509
    .restart local v1    # "newSetting":Lcom/oneplus/base/Settings;
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeCustomSettings() - create new setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/base/Settings;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v5, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v5, v6}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 511
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_2
    :goto_0
    instance-of v5, v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    if-eqz v5, :cond_3

    .line 521
    const-string/jumbo v5, "Manual.Saved"

    invoke-virtual {v1, v5}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 522
    .local v0, "isFileExisted":Z
    if-nez v0, :cond_3

    .line 524
    check-cast v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    .end local v1    # "newSetting":Lcom/oneplus/base/Settings;
    invoke-virtual {v1, v3}, Lcom/oneplus/camera/manual/ManualCustomSettings;->copyCustomSettings(Lcom/oneplus/base/Settings;)V

    .line 529
    .end local v0    # "isFileExisted":Z
    :cond_3
    instance-of v5, v3, Lcom/oneplus/camera/manual/ManualCustomSettings;

    if-eqz v5, :cond_4

    .line 530
    check-cast v3, Lcom/oneplus/camera/manual/ManualCustomSettings;

    .end local v3    # "oldSetting":Lcom/oneplus/base/Settings;
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/ManualCustomSettings;->abandonUnCommittedValues()V

    .line 532
    :cond_4
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TargetCustomSettingId:I

    .line 534
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const-string/jumbo v6, "PhotoResolutionChange"

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 536
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v5, :cond_5

    .line 538
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 539
    .local v2, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v5, v6, v8}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 540
    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 544
    .end local v2    # "oldHandle":Lcom/oneplus/base/Handle;
    :cond_5
    sget-object v5, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 545
    sget-object v5, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    .line 547
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-nez v5, :cond_7

    .line 549
    :cond_6
    sget-object v5, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    iget v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TargetCustomSettingId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 484
    :cond_7
    return-void

    .line 514
    .restart local v1    # "newSetting":Lcom/oneplus/base/Settings;
    .restart local v3    # "oldSetting":Lcom/oneplus/base/Settings;
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "changeCustomSettings() C0 is not existed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 784
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 785
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 786
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAwb()I
    .locals 2

    .prologue
    .line 2795
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getColorTemperature()I
    .locals 2

    .prologue
    .line 2804
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getEV()F
    .locals 2

    .prologue
    .line 2832
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getExposure()J
    .locals 2

    .prologue
    .line 2813
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getFocus()F
    .locals 2

    .prologue
    .line 2841
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getIso()I
    .locals 2

    .prologue
    .line 2784
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewValue(Lcom/oneplus/camera/manual/ControlType;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getManualSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getManualSettings(I)Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 825
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 840
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->handleMessage(Landroid/os/Message;)V

    .line 823
    :goto_0
    return-void

    .line 828
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->scheduleUpdatingActivePictureInfo()V

    goto :goto_0

    .line 833
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 834
    .local v0, "histogram":[I
    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->onHistogramUpdated([I)V

    .line 835
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->recycleHistogram([I)V

    goto :goto_0

    .line 825
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method public isRawCaptureEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 899
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isRawCaptureEnabled() - m_Settings is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return v4

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    .line 905
    .local v0, "setting":Lcom/oneplus/base/Settings;
    if-eqz v0, :cond_1

    .line 906
    const-string/jumbo v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRawCaptureEnabled() - m_ManualModeCustomSettingId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setting is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    return v4
.end method

.method public onControlItemClick(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 2
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_0

    .line 980
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v0, p1, :cond_1

    .line 984
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    .line 976
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 994
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnter() - Started."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iput-boolean v8, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    .line 999
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 1000
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1001
    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 1004
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1006
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 1007
    iput-boolean v7, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    .line 1008
    return v7

    .line 1012
    :cond_1
    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1014
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnter() - Fail to change to photo mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 1016
    return v7

    .line 1018
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1020
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnter() - Components are initializing, re-enter later"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 1022
    iput-boolean v7, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    .line 1023
    return v8

    .line 1026
    :cond_3
    iget v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    if-eqz v3, :cond_4

    .line 1028
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setSettingToActivity(Lcom/oneplus/base/Settings;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1029
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 1033
    :cond_4
    new-instance v3, Lcom/oneplus/base/HandleSet;

    new-array v4, v7, [Lcom/oneplus/base/Handle;

    invoke-direct {v3, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 1036
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1039
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v3, :cond_5

    .line 1040
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1043
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    .line 1046
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v3, :cond_6

    .line 1047
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v5, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v4, v5, v7}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1050
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v3, :cond_7

    .line 1051
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v4, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1054
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v3, :cond_8

    .line 1055
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    invoke-interface {v4}, Lcom/oneplus/camera/ui/TouchAutoExposureUI;->disableTouchLockExposure()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1056
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v3, :cond_9

    .line 1057
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-interface {v4}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->disableTouchLockFocus()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1060
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v3, :cond_a

    .line 1061
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v3, :cond_a

    .line 1062
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1068
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 1069
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_b

    .line 1071
    new-instance v3, Lcom/oneplus/camera/manual/ManualModeUI$8;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI$8;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;)V

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1082
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    .line 1085
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    .line 1086
    .local v2, "setting":Lcom/oneplus/base/Settings;
    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->applyManualCustomSettings(Lcom/oneplus/base/Settings;)V

    .line 1089
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v3, :cond_c

    .line 1090
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v4, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoPosition(Landroid/graphics/RectF;)V

    .line 1093
    :cond_c
    iput-boolean v7, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsEntering:Z

    .line 1094
    return v8

    .line 1064
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v2    # "setting":Lcom/oneplus/base/Settings;
    :cond_d
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v3, v4, v7}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandlerHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onExit(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1103
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 1106
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 1109
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    .line 1112
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/HandleSet;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 1113
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/HandleSet;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 1114
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    .line 1115
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CustomSettingsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CustomSettingsHandle:Lcom/oneplus/base/Handle;

    .line 1116
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 1119
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    .line 1122
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SimpleUIModeHandle:Lcom/oneplus/base/Handle;

    .line 1125
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_GestureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 1128
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->clearPreviewInfo()V

    .line 1131
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v2, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 1138
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 1139
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 1141
    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$9;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI$9;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1152
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsActivePictureInfoUpdateScheduled:Z

    if-eqz v1, :cond_2

    .line 1154
    iput-boolean v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IsActivePictureInfoUpdateScheduled:Z

    .line 1155
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_UpdateActivePictureInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1159
    :cond_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->HISTOGRAM_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ReleaseHistogramResRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1162
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 1100
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 1202
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 1203
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1206
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$10;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1215
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$11;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1224
    const-class v1, Lcom/oneplus/camera/ExposureController;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$12;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1243
    const-class v1, Lcom/oneplus/camera/FlashController;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$13;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1252
    const-class v1, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$14;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1261
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$15;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1270
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$16;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1279
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$17;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1300
    const-class v1, Lcom/oneplus/camera/ui/PreviewCover;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$18;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1309
    const-class v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$19;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$19;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1326
    const-class v1, Lcom/oneplus/camera/ui/GestureDetector;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$20;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$20;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1342
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$21;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$21;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1352
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$22;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$22;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1363
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$23;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$23;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1391
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$24;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$24;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1402
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$25;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$25;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1418
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$26;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$26;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1443
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$27;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$27;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1459
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$28;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$28;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1490
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$29;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$29;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1507
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$30;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$30;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1527
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$31;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$31;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1537
    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$32;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ManualModeUI$32;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    .line 1553
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createDefaultManualSettings()Lcom/oneplus/base/Settings;

    .line 1200
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 1605
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1607
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "setting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    .line 1608
    .local v0, "setting":Lcom/oneplus/base/Settings;
    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    goto :goto_0

    .line 1612
    .end local v0    # "setting":Lcom/oneplus/base/Settings;
    .end local v1    # "setting$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onRelease()V

    .line 1602
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1620
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeUI;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1623
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 1626
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updatePreviewInfoRotation()V

    .line 1618
    :cond_0
    return-void
.end method

.method public onRotationStateChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobView$RotationState;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/camera/manual/KnobView;
    .param p2, "state"    # Lcom/oneplus/camera/manual/KnobView$RotationState;

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1638
    :cond_0
    return-void

    .line 1641
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-KnobView$RotationStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1634
    :goto_0
    return-void

    .line 1644
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 1647
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V
    .locals 11
    .param p1, "view"    # Lcom/oneplus/camera/manual/KnobView;
    .param p2, "oldItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;
    .param p3, "newItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;

    .prologue
    const v10, 0x461c4000    # 10000.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1659
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1660
    :cond_0
    return-void

    .line 1662
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Settings;

    .line 1664
    .local v7, "setting":Lcom/oneplus/base/Settings;
    const/4 v6, 0x0

    .line 1666
    .local v6, "checkEvValidity":Z
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ControlTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1721
    :cond_2
    :goto_0
    iget-object v0, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlItemText(Ljava/lang/String;)V

    .line 1727
    if-eqz v6, :cond_3

    .line 1728
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEvDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setUIEnabled(ZLcom/oneplus/camera/manual/ControlType;)V

    .line 1732
    :cond_3
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_KNOB_VIEW_VALUE_UPDATED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    iget-wide v4, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    invoke-direct {v1, v2, v4, v5}, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;-><init>(Lcom/oneplus/camera/manual/ControlType;D)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1656
    return-void

    .line 1669
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v8

    const/16 v1, 0x7559

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1670
    if-eqz v7, :cond_2

    .line 1672
    const-string/jumbo v0, "Manual.AWB"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1673
    const-string/jumbo v0, "Manual.AWB.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1677
    :pswitch_1
    const/4 v6, 0x1

    .line 1678
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v1, 0x755a

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1679
    if-eqz v7, :cond_2

    .line 1681
    const-string/jumbo v0, "Manual.EXPOSURE"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1682
    const-string/jumbo v0, "Manual.EXPOSURE.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1686
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v1, 0x755b

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1687
    if-eqz v7, :cond_2

    .line 1689
    const-string/jumbo v0, "Manual.FOCUS"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v1, v8

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    const-string/jumbo v0, "Manual.FOCUS.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1694
    :pswitch_3
    const/4 v6, 0x1

    .line 1695
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v8

    const/16 v1, 0x755c

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1696
    if-eqz v7, :cond_2

    .line 1698
    const-string/jumbo v0, "Manual.ISO"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1699
    const-string/jumbo v0, "Manual.ISO.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1703
    :pswitch_4
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v1, 0x755d

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1704
    if-eqz v7, :cond_2

    .line 1706
    const-string/jumbo v0, "Manual.EV"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v1, v8

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1707
    const-string/jumbo v0, "Manual.EV.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1711
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v8

    const/16 v1, 0x755e

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1712
    if-eqz v7, :cond_2

    .line 1714
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    iget-wide v8, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1715
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE.TICK"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 1728
    goto/16 :goto_1

    .line 1666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public saveCustomSettings()V
    .locals 5

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 1903
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    return-void

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCustomSettings() - Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    .line 1907
    .local v0, "setting":Lcom/oneplus/base/Settings;
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1908
    const-string/jumbo v1, "Manual.AWB"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getAwb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1911
    :goto_0
    const-string/jumbo v1, "Manual.EXPOSURE"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getExposure()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1912
    const-string/jumbo v1, "Manual.EV"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getEV()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1913
    const-string/jumbo v1, "Manual.FOCUS"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getFocus()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1914
    const-string/jumbo v1, "Manual.ISO"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getIso()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1917
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isColorTemperatureSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1918
    const-string/jumbo v1, "Manual.AWB.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1921
    :goto_1
    const-string/jumbo v1, "Manual.EXPOSURE.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1922
    const-string/jumbo v1, "Manual.EV.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1923
    const-string/jumbo v1, "Manual.FOCUS.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1924
    const-string/jumbo v1, "Manual.ISO.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1927
    const-string/jumbo v1, "SelfTimer.Back"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1928
    const-string/jumbo v2, "Resolution.Photo.Back"

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1929
    const-string/jumbo v1, "Manual.Saved"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1930
    instance-of v1, v0, Lcom/oneplus/camera/manual/ManualCustomSettings;

    if-eqz v1, :cond_1

    .line 1931
    check-cast v0, Lcom/oneplus/camera/manual/ManualCustomSettings;

    .end local v0    # "setting":Lcom/oneplus/base/Settings;
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->commitManualCustomSetting()V

    .line 1901
    :cond_1
    return-void

    .line 1910
    .restart local v0    # "setting":Lcom/oneplus/base/Settings;
    :cond_2
    const-string/jumbo v1, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getColorTemperature()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1920
    :cond_3
    const-string/jumbo v1, "Manual.COLOR.TEMPERATURE.TICK"

    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getKnobViewTick(Lcom/oneplus/camera/manual/ControlType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
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
    .line 1951
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1952
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setManualModeCustomSetting(I)Z

    move-result v0

    return v0

    .line 1953
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeUI;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAwb(I)V
    .locals 4
    .param p1, "awb"    # I

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAwb() - awb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    int-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2788
    return-void
.end method

.method public setColorTemperature(I)V
    .locals 4
    .param p1, "colorTemperature"    # I

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColorTemperature() - colorTemperature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->COLOR_TEMPERATURE:Lcom/oneplus/camera/manual/ControlType;

    int-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2797
    return-void
.end method

.method public setEV(F)V
    .locals 4
    .param p1, "ev"    # F

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEV() - ev : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->EV:Lcom/oneplus/camera/manual/ControlType;

    float-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2815
    return-void
.end method

.method public setExposure(J)V
    .locals 5
    .param p1, "exposure"    # J

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExposure() - exposure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    long-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2806
    return-void
.end method

.method public setFocus(F)V
    .locals 4
    .param p1, "focus"    # F

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocus() - focus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    float-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2834
    return-void
.end method

.method public setIso(I)V
    .locals 4
    .param p1, "iso"    # I

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIso() - iso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    int-to-double v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setKnobViewByValue(Lcom/oneplus/camera/manual/ControlType;D)V

    .line 2775
    return-void
.end method

.method public setRaw(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRaw() - raw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " m_ManualModeCustomSettingId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ManualModeCustomSettingId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "RawCapture"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2820
    :goto_0
    return-void

    .line 2828
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRaw() - settings is null, unable to set raw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
