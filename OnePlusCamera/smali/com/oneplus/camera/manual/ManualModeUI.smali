.class public final Lcom/oneplus/camera/manual/ManualModeUI;
.super Lcom/oneplus/camera/ModeUI;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/camera/manual/KnobViewChangedListener;
.implements Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;,
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
.field private static final synthetic -com-oneplus-camera-manual-ControlTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-KnobView$RotationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-util-AspectRatioSwitchesValues:[I = null

.field private static final CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

.field private static final LONG_EXPOSURE_TIME_THRESHOLD:J = 0x1dcd6500L

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


# instance fields
.field private m_BaseView:Landroid/widget/RelativeLayout;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

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

.field private m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

.field private m_OptionsPanelToggleHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/manual/ControlType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/OptionsPanel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object v0
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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->-com-oneplus-camera-manual-ControlTypeSwitchesValues:[I

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

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

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

    const/16 v2, 0x10

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

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x11

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/16 v2, 0x13

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

.method static synthetic -set2(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/FocusExposureIndicator;)Lcom/oneplus/camera/ui/FocusExposureIndicator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/OptionsPanel;)Lcom/oneplus/camera/ui/OptionsPanel;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    return-object p1
.end method

.method static synthetic -set6(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/scene/SceneManager;)Lcom/oneplus/camera/scene/SceneManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object p1
.end method

.method static synthetic -set7(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoExposureUI;)Lcom/oneplus/camera/ui/TouchAutoExposureUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    return-object p1
.end method

.method static synthetic -set8(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/TouchAutoFocusUI;)Lcom/oneplus/camera/ui/TouchAutoFocusUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/manual/ManualModeUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->retryToEnter()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 0
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;)V
    .locals 0
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/manual/ManualModeUI;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setUIEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showProcessingDialog()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/manual/ManualModeUI;)J
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getSelectedExposureTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 0
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "state"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 63
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ManualControlType"

    const-class v2, Lcom/oneplus/camera/manual/ControlType;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v4, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/manual/ControlType;

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 119
    const-string/jumbo v0, "Manual Mode UI"

    const-class v1, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 117
    return-void
.end method

.method private addCaptureButtonsHandles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v5, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 124
    :cond_1
    return-void
.end method

.method private changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "state"    # Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateIndicatorContainerViewVisibility()V

    .line 137
    :cond_0
    return-void
.end method

.method private createControlViews()V
    .locals 17

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 152
    return-void

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 154
    return-void

    .line 157
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 158
    .local v7, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, "iconIndex":I
    sget-object v14, Lcom/oneplus/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/oneplus/camera/manual/ControlType;

    const/4 v2, 0x0

    array-length v15, v14

    move v13, v2

    move v10, v9

    .end local v9    # "iconIndex":I
    .local v10, "iconIndex":I
    :goto_0
    if-ge v13, v15, :cond_3

    aget-object v8, v14, v13

    .line 163
    .local v8, "controlType":Lcom/oneplus/camera/manual/ControlType;
    const v2, 0x7f030020

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v7, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, "container":Landroid/view/View;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f0800e1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 165
    .local v12, "width":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v11, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f0800e2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 167
    invoke-virtual {v7}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f0800e2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 168
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "iconIndex":I
    .restart local v9    # "iconIndex":I
    invoke-virtual {v2, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 171
    const v2, 0x7f09009c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 172
    .local v6, "touchView":Landroid/view/View;
    const v2, 0x7f09009d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 173
    .local v4, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f09009e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 176
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 177
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ControlTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v8}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v16

    aget v2, v2, v16

    packed-switch v2, :pswitch_data_0

    .line 208
    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :goto_1
    if-eqz v1, :cond_2

    .line 210
    const v2, 0x7f0b0069

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 211
    const v2, 0x7f0c0028

    invoke-virtual {v1, v7, v2}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/manual/ControlItem;->setControlItemListener(Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;)V

    .line 160
    :cond_2
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move v10, v9

    .end local v9    # "iconIndex":I
    .restart local v10    # "iconIndex":I
    goto/16 :goto_0

    .line 181
    .end local v10    # "iconIndex":I
    .restart local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    .restart local v9    # "iconIndex":I
    :pswitch_0
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 182
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f020078

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_1
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 189
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f020075

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_2
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 196
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f020076

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :pswitch_3
    new-instance v1, Lcom/oneplus/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    sget-object v2, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/manual/ControlItem;-><init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 203
    .local v1, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    const v2, 0x7f020077

    invoke-virtual {v7, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 149
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
    :cond_3
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createKnobViews()V
    .locals 14

    .prologue
    .line 221
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v11, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 226
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 227
    .local v6, "knobHeight":I
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 228
    .local v2, "captureBarHeight":I
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08008e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 231
    .local v10, "optionPanelHeight":I
    new-instance v0, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/WhiteBalanceKnobView;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "awbKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v3, Lcom/oneplus/camera/manual/ExposureTimeKnobView;

    invoke-direct {v3, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;-><init>(Landroid/content/Context;)V

    .line 233
    .local v3, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v4, Lcom/oneplus/camera/manual/FocusKnobView;

    invoke-direct {v4, v1}, Lcom/oneplus/camera/manual/FocusKnobView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v4, "focusKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v5, Lcom/oneplus/camera/manual/ISOKnobView;

    invoke-direct {v5, v1}, Lcom/oneplus/camera/manual/ISOKnobView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v5, "isoKnob":Lcom/oneplus/camera/manual/KnobView;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    .line 238
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v11, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v9, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v9, "knobviewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    add-int v11, v2, v10

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 247
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "knobview$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/manual/KnobView;

    .line 249
    .local v7, "knobview":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v7, v9}, Lcom/oneplus/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v7, p0}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V

    .line 251
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 252
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 256
    .end local v7    # "knobview":Lcom/oneplus/camera/manual/KnobView;
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    .line 257
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->AWB:Lcom/oneplus/camera/manual/ControlType;

    sget-object v13, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    sget-object v13, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->FOCUS:Lcom/oneplus/camera/manual/ControlType;

    sget-object v13, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v11, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v12, Lcom/oneplus/camera/manual/ControlType;->ISO:Lcom/oneplus/camera/manual/ControlType;

    sget-object v13, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private getSelectedExposureTimeNanos()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 268
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 269
    return-wide v4

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->EXPOSURE:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 271
    .local v0, "expKnob":Lcom/oneplus/camera/manual/KnobView;
    if-nez v0, :cond_1

    .line 272
    return-wide v4

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    .line 274
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v1, :cond_2

    .line 275
    iget-wide v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v2, v2

    return-wide v2

    .line 276
    :cond_2
    return-wide v4
.end method

.method private hideKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 4
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 281
    return-void
.end method

.method private hideProcessingDialog()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 292
    return-void
.end method

.method private hideUI()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideUI() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 299
    :cond_0
    return-void
.end method

.method private isRawCaptureEnabled()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isRawCaptureEnabled() - m_Settings is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToEnter()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 343
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 336
    :cond_0
    return-void
.end method

.method private retryToEnter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->onEnter(I)Z

    .line 797
    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 792
    :cond_0
    return-void
.end method

.method private setControlItemText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 806
    :cond_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlItem;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 1
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 816
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 814
    return-void
.end method

.method private setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V
    .locals 4
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    .line 820
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v2, p1, :cond_0

    .line 821
    return-void

    .line 823
    :cond_0
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 826
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 827
    .local v1, "oldControlType":Lcom/oneplus/camera/manual/ControlType;
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 828
    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V

    .line 830
    if-eqz p2, :cond_2

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    .line 831
    :goto_0
    if-eqz p2, :cond_3

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 829
    :goto_1
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 832
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 833
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    .line 836
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    sget-object v3, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    if-eq v2, v3, :cond_1

    .line 838
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 840
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/KnobView;->getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    .line 841
    .local v0, "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    if-eqz v0, :cond_4

    .line 842
    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 818
    .end local v0    # "info":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_1
    :goto_2
    return-void

    .line 830
    :cond_2
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    goto :goto_0

    .line 831
    :cond_3
    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    goto :goto_1

    .line 844
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
    .line 854
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 855
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    return-void
.end method

.method private setFloatingTextViewVisibility(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 866
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 867
    return-void

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 871
    .local v0, "yMove":F
    if-eqz p1, :cond_1

    .line 873
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 888
    :goto_0
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 889
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

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$16;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 863
    :goto_1
    return-void

    .line 876
    :pswitch_0
    return-void

    .line 878
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 880
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 881
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 885
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 900
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 914
    :goto_2
    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 915
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

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$17;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 903
    :pswitch_3
    return-void

    .line 905
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 906
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 907
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 911
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 900
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void

    .line 937
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

    .line 938
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI$18;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method

.method private setUIEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 951
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 953
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "knobView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobView;

    .line 954
    .local v2, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v2, p1}, Lcom/oneplus/camera/manual/KnobView;->setEnabled(Z)V

    goto :goto_0

    .line 957
    .end local v2    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v3    # "knobView$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 959
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlItem;

    .line 960
    .local v0, "item":Lcom/oneplus/camera/manual/ControlItem;
    invoke-virtual {v0, p1}, Lcom/oneplus/camera/manual/ControlItem;->setEnabled(Z)V

    goto :goto_1

    .line 949
    .end local v0    # "item":Lcom/oneplus/camera/manual/ControlItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private showKnobViewUI(Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
    .locals 4
    .param p1, "inAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .prologue
    const/4 v3, 0x0

    .line 968
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 973
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 966
    return-void
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    .line 980
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v1, :cond_0

    .line 981
    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 985
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 978
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showUI()V
    .locals 6

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 996
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 997
    .local v1, "contentView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 998
    return-void

    .line 1001
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    .line 1003
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showUI() - Show"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1006
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1007
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 1008
    return-void

    .line 1011
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showUI() - Setup"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    .line 1015
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f090098

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    .line 1016
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f090099

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1017
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f09009b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    .line 1020
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createControlViews()V

    .line 1023
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->createKnobViews()V

    .line 1026
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1029
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 1032
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 1036
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "controlItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/ControlItem;

    .line 1037
    .local v2, "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ControlItem;->getControlContainer()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_0

    .line 1039
    .end local v2    # "controlItem":Lcom/oneplus/camera/manual/ControlItem;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    .line 992
    return-void
.end method

.method private updateControlViewStyle(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;)V
    .locals 4
    .param p1, "oldControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 1046
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 1047
    return-void

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1050
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v2, 0x0

    .line 1051
    .local v2, "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    const/4 v1, 0x0

    .line 1052
    .local v1, "newItem":Lcom/oneplus/camera/manual/ControlItem;
    if-eqz p1, :cond_1

    .line 1053
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v2, Lcom/oneplus/camera/manual/ControlItem;

    .line 1054
    :cond_1
    if-eqz p2, :cond_2

    .line 1055
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newItem":Lcom/oneplus/camera/manual/ControlItem;
    check-cast v1, Lcom/oneplus/camera/manual/ControlItem;

    .line 1056
    :cond_2
    if-eqz v2, :cond_3

    .line 1058
    const v3, 0x7f0c0028

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1059
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    .line 1061
    :cond_3
    if-eqz v1, :cond_4

    .line 1063
    const v3, 0x7f0c002a

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1064
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/manual/ControlItem;->setSelected(Z)V

    .line 1044
    :cond_4
    return-void
.end method

.method private updateIndicatorContainerViewVisibility()V
    .locals 5

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 1073
    return-void

    .line 1075
    :cond_0
    const/4 v0, 0x0

    .line 1076
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

    .line 1078
    .local v1, "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-ne v1, v3, :cond_1

    .line 1079
    const/4 v0, 0x1

    goto :goto_0

    .line 1081
    .end local v1    # "state":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :cond_2
    if-eqz v0, :cond_3

    .line 1082
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1070
    :goto_1
    return-void

    .line 1084
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateKnobItemsSelfRotation()V
    .locals 3

    .prologue
    .line 1091
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1093
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

    .line 1094
    .local v0, "view":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/manual/KnobView;->setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 1089
    .end local v0    # "view":Lcom/oneplus/camera/manual/KnobView;
    .end local v1    # "view$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateKnobViewBackgroundColor()V
    .locals 6

    .prologue
    .line 1102
    iget-object v4, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 1103
    return-void

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1106
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1107
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

    .line 1108
    .local v2, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v2, v1}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewBackgroundColor(I)V

    goto :goto_0

    .line 1100
    .end local v2    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    :cond_1
    return-void
.end method

.method private updateKnobViewPosition()V
    .locals 19

    .prologue
    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    .line 1116
    if-nez v16, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 1120
    :cond_0
    return-void

    .line 1119
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 1123
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08003f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1124
    .local v10, "newMarginBottom":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800de

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1125
    .local v7, "manualControlContainerHeight":I
    add-int/2addr v10, v7

    .line 1126
    sget-object v16, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Size;

    .line 1127
    .local v14, "previewSize":Landroid/util/Size;
    invoke-static {v14}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v15

    .line 1128
    .local v15, "ratio":Lcom/oneplus/util/AspectRatio;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-util-AspectRatioSwitchesValues()[I

    move-result-object v16

    invoke-virtual {v15}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 1137
    :goto_0
    const/4 v3, 0x0

    .line 1138
    .local v3, "hasChange":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "knobView$iterator":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/manual/KnobView;

    .line 1140
    .local v5, "knobView":Lcom/oneplus/camera/manual/KnobView;
    invoke-virtual {v5}, Lcom/oneplus/camera/manual/KnobView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1141
    .local v12, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1142
    .local v11, "oldMarginBottom":I
    if-eq v11, v10, :cond_2

    .line 1144
    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1145
    const/4 v3, 0x1

    .line 1153
    .end local v5    # "knobView":Lcom/oneplus/camera/manual/KnobView;
    .end local v11    # "oldMarginBottom":I
    .end local v12    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1154
    .local v13, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800d8

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1155
    .local v4, "knobHeight":I
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800e7

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1156
    .local v8, "marginToKnobView":I
    add-int v16, v10, v4

    add-int v9, v16, v8

    .line 1157
    .local v9, "newIndicatorMarginBottom":I
    iget v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    .line 1159
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1160
    const/4 v3, 0x1

    .line 1164
    :cond_3
    if-eqz v3, :cond_4

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1114
    :cond_4
    return-void

    .line 1132
    .end local v3    # "hasChange":Z
    .end local v4    # "knobHeight":I
    .end local v6    # "knobView$iterator":Ljava/util/Iterator;
    .end local v8    # "marginToKnobView":I
    .end local v9    # "newIndicatorMarginBottom":I
    .end local v13    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    move-object/from16 v16, v0

    sget-object v18, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v16, v17, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v10, v0

    .line 1133
    goto/16 :goto_0

    .line 1128
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
    .line 1172
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1173
    return-void

    .line 1175
    :cond_0
    const/4 v3, 0x0

    .line 1176
    .local v3, "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    const/4 v0, 0x0

    .line 1177
    .local v0, "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    if-eqz p1, :cond_1

    .line 1178
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v3, Lcom/oneplus/camera/manual/KnobView;

    .line 1179
    :cond_1
    if-eqz p2, :cond_2

    .line 1180
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newKnobView":Lcom/oneplus/camera/manual/KnobView;
    check-cast v0, Lcom/oneplus/camera/manual/KnobView;

    .line 1181
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 1182
    .local v5, "yMove":I
    if-eqz v3, :cond_3

    .line 1185
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->cancelTouchEvent()V

    .line 1188
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p4}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1225
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1226
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1227
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1231
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1234
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$AnimationTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 1275
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1276
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1277
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1170
    :cond_4
    :goto_1
    return-void

    .line 1191
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1192
    .local v4, "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v4}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 1207
    :goto_2
    :pswitch_1
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v4, v6, :cond_3

    .line 1209
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1210
    move-object v2, v3

    .line 1211
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

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$19;

    invoke-direct {v7, p0, p1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$19;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1197
    .end local v2    # "oldFinalKnobView":Landroid/view/View;
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 1198
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 1199
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 1200
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_2

    .line 1204
    :pswitch_3
    invoke-virtual {v3}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 1237
    .end local v4    # "oldState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_4
    iget-object v6, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1238
    .local v1, "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ManualModeUI$ViewVisibilityStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 1254
    :goto_3
    :pswitch_5
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v1, v6, :cond_4

    .line 1256
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1257
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

    new-instance v7, Lcom/oneplus/camera/manual/ManualModeUI$20;

    invoke-direct {v7, p0, p2}, Lcom/oneplus/camera/manual/ManualModeUI$20;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 1243
    :pswitch_6
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setVisibility(I)V

    .line 1244
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleX(F)V

    .line 1245
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setScaleY(F)V

    .line 1246
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setAlpha(F)V

    .line 1247
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_3

    .line 1251
    :pswitch_7
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 1269
    .end local v1    # "newState":Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_8
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1270
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 1271
    sget-object v6, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 1188
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 1234
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
    .end packed-switch

    .line 1192
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1238
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getAwb()I
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeController;->getAwb()I

    move-result v0

    return v0
.end method

.method public getExposure()J
    .locals 2

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeController;->getExposure()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocus()F
    .locals 1

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeController;->getFocus()F

    move-result v0

    return v0
.end method

.method public getIso()I
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeController;->getIso()I

    move-result v0

    return v0
.end method

.method public onControlItemClick(Lcom/oneplus/camera/manual/ControlType;)V
    .locals 3
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->toggleOptionsPanelVisibilityRequest(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_OptionsPanelToggleHandle:Lcom/oneplus/base/Handle;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    if-ne v0, p1, :cond_2

    .line 361
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    .line 350
    :goto_0
    return-void

    .line 363
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;)V

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 373
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 377
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 380
    return v5

    .line 384
    :cond_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEnter() - Fail to change to photo mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 388
    return v5

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v1

    if-nez v1, :cond_3

    .line 392
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEnter() - Components are initializing, re-enter later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 394
    return v6

    .line 398
    :cond_3
    new-instance v1, Lcom/oneplus/base/HandleSet;

    new-array v2, v5, [Lcom/oneplus/base/Handle;

    invoke-direct {v1, v2}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 401
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 404
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v3, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 408
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    .line 411
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v1, :cond_5

    .line 412
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v1, :cond_6

    .line 416
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v2, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v1, :cond_7

    .line 420
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    invoke-interface {v2}, Lcom/oneplus/camera/ui/TouchAutoExposureUI;->disableTouchLockExposure()Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 421
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_8

    .line 422
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-interface {v2}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->disableTouchLockFocus()Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 425
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 428
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V

    .line 430
    return v6
.end method

.method protected onExit(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 439
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlType(Lcom/oneplus/camera/manual/ControlType;Z)V

    .line 442
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideUI()V

    .line 445
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 446
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    .line 448
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 449
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 452
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->hideProcessingDialog()V

    .line 455
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 461
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 436
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 469
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 470
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 473
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 482
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$2;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 491
    const-class v1, Lcom/oneplus/camera/FlashController;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$3;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 500
    const-class v1, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$4;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 509
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$5;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 518
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$6;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 527
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$7;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 547
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$8;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 557
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$9;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 568
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$10;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 592
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$11;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 615
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$12;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 631
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$13;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 662
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$14;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 682
    const-class v1, Lcom/oneplus/camera/ui/OptionsPanel;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$15;-><init>(Lcom/oneplus/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 706
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    .line 467
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 719
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onRelease()V

    .line 712
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 727
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeUI;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 730
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 725
    :cond_0
    return-void
.end method

.method public onRotationStateChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobView$RotationState;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/camera/manual/KnobView;
    .param p2, "state"    # Lcom/oneplus/camera/manual/KnobView$RotationState;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 742
    :cond_0
    return-void

    .line 745
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-KnobView$RotationStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 738
    :goto_0
    return-void

    .line 748
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 751
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V
    .locals 8
    .param p1, "view"    # Lcom/oneplus/camera/manual/KnobView;
    .param p2, "oldItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;
    .param p3, "newItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 764
    :cond_0
    return-void

    .line 767
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-getcom-oneplus-camera-manual-ControlTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 784
    :goto_0
    iget-object v0, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 787
    iget-object v0, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->setControlItemText(Ljava/lang/String;)V

    .line 760
    return-void

    .line 770
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v6, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    const/16 v1, 0x7559

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 773
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v6, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v1, 0x755a

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 776
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v6, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-float v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v1, 0x755b

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 779
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    iget-wide v6, p3, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    const/16 v1, 0x755c

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAwb(I)V
    .locals 6
    .param p1, "awb"    # I

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x7559

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1292
    return-void
.end method

.method public setExposure(J)V
    .locals 7
    .param p1, "exposure"    # J

    .prologue
    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v1, 0x755a

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1300
    return-void
.end method

.method public setFocus(F)V
    .locals 6
    .param p1, "focus"    # F

    .prologue
    const/4 v2, 0x0

    .line 1310
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v1, 0x755b

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1308
    return-void
.end method

.method public setIso(I)V
    .locals 6
    .param p1, "iso"    # I

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1284
    return-void
.end method
