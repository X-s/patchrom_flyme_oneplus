.class final Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/FocusExposureIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;,
        Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;,
        Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;,
        Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FocusStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues:[I = null

.field private static final DELAY_SHOW_FOCUS_INDICATOR:J = 0x32L

.field private static final DURATION_EXPOSURE_COMP_ICON_ROTATION:J = 0x64L

.field private static final DURATION_FOCUS_INDICATOR_SHOW:J = 0x12cL

.field private static final DURATION_FOCUS_INDICATOR_VISIBLE_LONG:J = 0xbb8L

.field private static final DURATION_FOCUS_INDICATOR_VISIBLE_NORMAL:J = 0x3e8L

.field private static final DURATION_UI_ROTATION:J = 0x2bcL

.field private static final MSG_HIDE_FOCUS_INDICATOR:I = 0x2711

.field private static final MSG_SHOW_FOCUS_INDICATOR:I = 0x2710

.field private static final MSG_UI_ROTATING:I = 0x2715

.field private static final THRESHOLD_SEPARATE_INDICATORS:I = 0x32


# instance fields
.field private m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

.field private m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

.field private m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

.field private m_ExposureCompDragIcon:Landroid/view/View;

.field private m_ExposureCompDragIconContainer:Landroid/view/View;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_ExposureIndicator:Landroid/widget/ImageView;

.field private m_ExposureIndicatorContainer:Landroid/view/View;

.field private m_ExposureIndicatorText:Landroid/widget/TextView;

.field private m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_FocusIndicator:Landroid/widget/ImageView;

.field private m_FocusIndicatorText:Landroid/widget/TextView;

.field private m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

.field private m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

.field private m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

.field private m_IndicatorBaseView:Landroid/view/View;

.field private final m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorContainerHeight:I

.field private m_IndicatorContainerWidth:I

.field private m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field private m_LockExposureIndicator:Z

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_RelativeExposureComp:F

.field private m_TempInitPoint:Landroid/graphics/PointF;

.field private final m_TempLocationBuffer:[I

.field private m_TempTargetInitPoint:Landroid/graphics/PointF;

.field private m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/Camera$MeteringRect;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-FocusStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FocusState;->values()[Lcom/oneplus/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->values()[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-com-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompDragIconTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompDragIconActionUp()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/camera/FocusState;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p1, "oldFocusState"    # Lcom/oneplus/camera/FocusState;
    .param p2, "newFocusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateFocusExposureLockIndicator()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "regions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onAeRegionsChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "regions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onAfRegionsChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 370
    const-string/jumbo v0, "Focus/Exposure indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    .line 89
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    .line 368
    return-void
.end method

.method private changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    .locals 4
    .param p1, "state"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v1, p1, :cond_0

    .line 379
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    .line 381
    .local v0, "abnormalStateChange":Z
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 430
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 431
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeIndicatorState() - Abnormal state change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "changeIndicatorState() - State: "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne p1, v1, :cond_3

    .line 436
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 440
    :goto_1
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 375
    return-void

    .line 384
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 385
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 389
    const/4 v0, 0x1

    goto :goto_0

    .line 392
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 393
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    :pswitch_4
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_0

    .line 408
    :pswitch_5
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 414
    const/4 v0, 0x1

    .line 415
    goto :goto_0

    .line 419
    :pswitch_6
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 425
    const/4 v0, 0x1

    .line 426
    goto :goto_0

    .line 438
    :cond_3
    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 396
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 408
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 419
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 476
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideFocusIndicator() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    .line 485
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 486
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 492
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 495
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 500
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 467
    :cond_2
    return-void

    .line 473
    :pswitch_0
    return-void

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private hideFocusIndicatorDelayed()V
    .locals 4

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    return-void

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v2, v3, :cond_1

    .line 514
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-eq v2, v3, :cond_1

    .line 516
    const-wide/16 v0, 0x3e8

    .line 517
    .local v0, "duration":J
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 523
    :goto_0
    const/16 v2, 0x2711

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 507
    .end local v0    # "duration":J
    :cond_1
    :goto_1
    return-void

    .line 520
    .restart local v0    # "duration":J
    :pswitch_0
    const-wide/16 v0, 0xbb8

    .line 521
    goto :goto_0

    .line 527
    .end local v0    # "duration":J
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private isExposureLocked()Z
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    return v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFocusExposureAtSameRegion()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 541
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v0, :cond_0

    .line 542
    return v4

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 548
    return v4

    .line 549
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFocusExposureLocked()Z
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isExposureLocked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusLocked()Z
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x1

    return v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private lockExposureIndicator(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 1250
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_LockExposureIndicator:Z

    .line 1249
    return-void
.end method

.method private onAeRegionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v1, 0x0

    .line 570
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAeRegionsChanged() - AE region: "

    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    goto :goto_0
.end method

.method private onAfRegionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v1, 0x0

    .line 582
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAfRegionsChanged() - AF region: "

    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    goto :goto_0
.end method

.method private onExposureCompChanged(Z)V
    .locals 11
    .param p1, "animate"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 661
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v3, v5, :cond_0

    .line 662
    return-void

    .line 665
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v5}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 666
    .local v0, "ev":F
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v5}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 668
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    cmpl-float v3, v0, v10

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v2, v0, v3

    .line 671
    .local v2, "relativeExposureComp":F
    :goto_0
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_3

    .line 673
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_1
    return-void

    .line 668
    .end local v2    # "relativeExposureComp":F
    :cond_2
    neg-float v5, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v2, v5, v3

    .restart local v2    # "relativeExposureComp":F
    goto :goto_0

    .line 678
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 682
    const/16 v3, 0x2711

    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v3

    if-eqz v3, :cond_5

    cmpl-float v3, v2, v10

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 683
    invoke-direct {p0, v2, v4, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    .line 658
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 682
    goto :goto_1
.end method

.method private onExposureCompDragIconActionUp()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v0, v1, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 698
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    .line 701
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    .line 688
    return-void
.end method

.method private onExposureCompDragIconTouch(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 709
    iget-boolean v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_LockExposureIndicator:Z

    if-eqz v7, :cond_0

    .line 710
    const/4 v7, 0x0

    return v7

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 822
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 717
    :pswitch_0
    const/16 v7, 0x2711

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 720
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 721
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 722
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 723
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v7, v7, 0x168

    sparse-switch v7, :sswitch_data_0

    .line 738
    :goto_1
    sget-object v7, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    goto :goto_0

    .line 726
    :sswitch_0
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 729
    :sswitch_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 730
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 733
    :sswitch_2
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 744
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v8, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v7, v8, :cond_e

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 748
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 749
    .local v6, "y":F
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v0, v5, v7

    .line 750
    .local v0, "diffX":F
    iget-object v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 752
    .local v1, "diffY":F
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    .line 754
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_3

    .line 755
    neg-float v7, v1

    div-float v7, v0, v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 766
    .local v4, "relativeAngle":F
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int v3, v7, v8

    .line 767
    .local v3, "orientationDiff":I
    int-to-float v7, v3

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 768
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    .line 769
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v4, v7

    .line 774
    :cond_1
    :goto_3
    iget v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    .line 775
    .local v2, "exposureComp":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_7

    .line 777
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    .line 778
    move v2, v4

    .line 808
    :cond_2
    :goto_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v2, v7, v8}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    goto/16 :goto_0

    .line 757
    .end local v2    # "exposureComp":F
    .end local v3    # "orientationDiff":I
    .end local v4    # "relativeAngle":F
    :cond_3
    div-float v7, v0, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    sub-double v8, v10, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto :goto_2

    .line 761
    .end local v4    # "relativeAngle":F
    :cond_4
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_5

    .line 762
    div-float v7, v0, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v8, v10, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto :goto_2

    .line 764
    .end local v4    # "relativeAngle":F
    :cond_5
    neg-float v7, v0

    div-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto/16 :goto_2

    .line 770
    .restart local v3    # "orientationDiff":I
    :cond_6
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 771
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    goto :goto_3

    .line 780
    .restart local v2    # "exposureComp":F
    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_8

    .line 782
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    .line 783
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    goto :goto_4

    .line 785
    :cond_8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_a

    .line 787
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_9

    .line 788
    move v2, v4

    goto/16 :goto_4

    .line 790
    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    goto/16 :goto_4

    .line 792
    :cond_a
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_c

    .line 794
    move v2, v4

    .line 795
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_b

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    .line 796
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 797
    :cond_b
    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 798
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    goto/16 :goto_4

    .line 802
    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    .line 803
    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_d

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 804
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_4

    .line 805
    :cond_d
    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, -0x41000000    # -0.5f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 806
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    goto/16 :goto_4

    .line 811
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    .end local v2    # "exposureComp":F
    .end local v3    # "orientationDiff":I
    .end local v4    # "relativeAngle":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_e
    const/4 v7, 0x0

    return v7

    .line 818
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompDragIconActionUp()V

    .line 819
    const/4 v7, 0x0

    return v7

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 723
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;Lcom/oneplus/camera/FocusState;)V
    .locals 10
    .param p1, "oldFocusState"    # Lcom/oneplus/camera/FocusState;
    .param p2, "newFocusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x2710

    const/4 v3, 0x1

    .line 595
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 646
    :cond_0
    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_7

    .line 647
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const/4 v9, 0x0

    .line 599
    .local v9, "hideAndShow":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/PhotoCaptureState;

    .line 600
    .local v8, "captureSate":Lcom/oneplus/camera/PhotoCaptureState;
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v0, v2, :cond_4

    .line 602
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureAtSameRegion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const/4 v9, 0x1

    .line 608
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFocusStateChanged() - captureSate : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v8, v0, :cond_5

    .line 610
    const/4 v9, 0x0

    .line 623
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 625
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFocusStateChanged() - Hide and Show"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    .line 627
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    :goto_3
    const-wide/16 v6, 0x32

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    goto :goto_0

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v0, v2, :cond_2

    .line 606
    const/4 v9, 0x1

    goto :goto_1

    .line 613
    :cond_5
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 617
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v2, :cond_3

    .line 618
    const/4 v9, 0x0

    goto :goto_2

    .line 627
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 631
    .end local v8    # "captureSate":Lcom/oneplus/camera/PhotoCaptureState;
    .end local v9    # "hideAndShow":Z
    :pswitch_3
    return-void

    .line 634
    :pswitch_4
    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne p1, v0, :cond_0

    .line 636
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 642
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    .line 643
    return-void

    .line 640
    :pswitch_5
    return-void

    .line 650
    :cond_7
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 651
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto/16 :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 613
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 636
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 831
    sget-object v12, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    .line 832
    const/4 v12, 0x0

    return v12

    .line 834
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-ui-FocusExposureIndicatorImpl$IndicatorStateSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v13}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 841
    :pswitch_0
    const/4 v12, 0x0

    return v12

    .line 845
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    .line 846
    .local v10, "rawX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    .line 848
    .local v11, "rawY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 985
    :cond_1
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 852
    :pswitch_2
    const/16 v12, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "onIndicatorIconTouch() - UI rotating, ignore"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v12, 0x1

    return v12

    .line 859
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_3

    .line 860
    const/16 v12, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 863
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 868
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    goto :goto_0

    .line 874
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0

    .line 871
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0

    .line 877
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_0

    .line 885
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float v4, v10, v12

    .line 886
    .local v4, "diffX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v5, v11, v12

    .line 889
    .local v5, "diffY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    .line 892
    :cond_4
    sget-object v12, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 895
    const/16 v12, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v12, :cond_5

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v13, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 905
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_7

    .line 908
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v12, v13, :cond_1

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    add-float v8, v12, v4

    .line 915
    .local v8, "newX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float v9, v12, v5

    .line 916
    .local v9, "newY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float v2, v8, v12

    .line 917
    .local v2, "cX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float v3, v9, v12

    .line 920
    .local v3, "cY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v12, :cond_a

    .line 922
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v13, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 923
    .local v1, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    div-float v6, v12, v13

    .line 924
    .local v6, "estAfRegionPadding":F
    sub-float v12, v2, v6

    iget v13, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b

    .line 925
    iget v12, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v12, v6

    .line 928
    :cond_8
    :goto_1
    sub-float v12, v3, v6

    iget v13, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c

    .line 929
    iget v12, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v12, v6

    .line 932
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_a

    .line 934
    iget v12, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v12

    .line 935
    iget v12, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v12

    .line 938
    .end local v1    # "bounds":Landroid/graphics/RectF;
    .end local v6    # "estAfRegionPadding":F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v2, v12

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v9, v3, v12

    .line 940
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setX(F)V

    .line 941
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 926
    .restart local v1    # "bounds":Landroid/graphics/RectF;
    .restart local v6    # "estAfRegionPadding":F
    :cond_b
    add-float v12, v2, v6

    iget v13, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    .line 927
    iget v12, v1, Landroid/graphics/RectF;->right:F

    sub-float v2, v12, v6

    goto :goto_1

    .line 930
    :cond_c
    add-float v12, v3, v6

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 931
    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v12, v6

    goto :goto_2

    .line 947
    .end local v1    # "bounds":Landroid/graphics/RectF;
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v4    # "diffX":F
    .end local v5    # "diffY":F
    .end local v6    # "estAfRegionPadding":F
    .end local v8    # "newX":F
    .end local v9    # "newY":F
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_d

    .line 948
    const/4 v12, 0x1

    return v12

    .line 951
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v2, v12, v13

    .line 952
    .restart local v2    # "cX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v3, v12, v13

    .line 955
    .restart local v3    # "cY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_f

    const/4 v7, 0x1

    .line 956
    .local v7, "isFocusIndicator":Z
    :goto_3
    if-eqz v7, :cond_10

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v12, :cond_e

    .line 960
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-interface {v12, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->touchAutoFocus(FF)Lcom/oneplus/base/Handle;

    .line 974
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v7    # "isFocusIndicator":Z
    :cond_e
    :goto_4
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_11

    .line 975
    const/4 v12, 0x1

    return v12

    .line 955
    .restart local v2    # "cX":F
    .restart local v3    # "cY":F
    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    .line 965
    .restart local v7    # "isFocusIndicator":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    if-eqz v12, :cond_e

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    invoke-interface {v12, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 978
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v7    # "isFocusIndicator":Z
    :cond_11
    sget-object v12, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto/16 :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 848
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 868
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private setCanFocusExposureSeparated(Z)V
    .locals 3
    .param p1, "canSeparate"    # Z

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCanFocusExposureSeparated() - "

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Can separate"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1279
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    .line 1274
    return-void

    .line 1276
    :cond_0
    const-string/jumbo v0, " Cannot separate"

    goto :goto_0
.end method

.method private setRelativeExposureComp(FZZ)V
    .locals 8
    .param p1, "exposureComp"    # F
    .param p2, "apply"    # Z
    .param p3, "animation"    # Z

    .prologue
    .line 1287
    iget v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 1288
    return-void

    .line 1290
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setRelativeExposureComp() - Relative exposure compensation : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, ", apply : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    iput p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    .line 1296
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    if-eqz v3, :cond_1

    .line 1297
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v3, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->setRelativeExposureComp(F)V

    .line 1298
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    if-eqz v3, :cond_2

    .line 1299
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v3, p1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->setRelativeExposureComp(F)V

    .line 1302
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1303
    return-void

    .line 1304
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1305
    const/4 p3, 0x0

    .line 1306
    .end local p3    # "animation":Z
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 1307
    const/4 p3, 0x0

    .line 1310
    :cond_5
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v2, v3, p1

    .line 1311
    .local v2, "viewRotation":F
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1313
    if-eqz p3, :cond_a

    .line 1315
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1317
    const-wide/16 v4, 0x64

    .line 1315
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1323
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1325
    if-eqz p3, :cond_b

    .line 1327
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1328
    neg-float v4, v2

    .line 1327
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1329
    const-wide/16 v4, 0x64

    .line 1327
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1337
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 1339
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v4, v6

    if-lez v3, :cond_d

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v3, v4, v6

    if-gez v3, :cond_d

    .line 1341
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_c

    .line 1342
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1345
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 1352
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v3, :cond_f

    .line 1354
    if-eqz p2, :cond_9

    .line 1356
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1357
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_e

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v0, p1, v3

    .line 1358
    .local v0, "ev":F
    :goto_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1284
    .end local v0    # "ev":F
    .end local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_9
    :goto_5
    return-void

    .line 1321
    :cond_a
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 1333
    :cond_b
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    neg-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 1344
    :cond_c
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const v4, 0x7f020039

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1348
    :cond_d
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1357
    .restart local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_e
    neg-float v4, p1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v0, v4, v3

    .restart local v0    # "ev":F
    goto :goto_4

    .line 1362
    .end local v0    # "ev":F
    .end local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_f
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setRelativeExposureComp() - No ExposureController interface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private showFocusIndicator(ZZ)V
    .locals 24
    .param p1, "isFocusLocked"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 1370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v5, :cond_0

    .line 1371
    return-void

    .line 1372
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1373
    return-void

    .line 1376
    :cond_1
    const/16 v5, 0x2710

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1377
    const/16 v5, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v15

    .line 1381
    .local v15, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v5, v6, :cond_2

    .line 1382
    return-void

    .line 1385
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1386
    return-void

    .line 1389
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v6, Lcom/oneplus/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/FaceTracker;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1393
    :cond_4
    if-eqz p1, :cond_6

    .line 1395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->stopAnimation()V

    .line 1397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->startAnimation()V

    .line 1402
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "showFocusIndicator() - Focus"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    .line 1407
    .local v17, "centerPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v6, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/RectF;

    .line 1408
    .local v23, "previewBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v5, :cond_7

    .line 1410
    const/high16 v21, 0x3f000000    # 0.5f

    .line 1411
    .local v21, "focusX":F
    const/high16 v22, 0x3f000000    # 0.5f

    .line 1418
    .local v22, "focusY":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/oneplus/camera/ui/Viewfinder;->pointFromPreview(FFLandroid/graphics/PointF;I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1419
    return-void

    .line 1390
    .end local v17    # "centerPoint":Landroid/graphics/PointF;
    .end local v21    # "focusX":F
    .end local v22    # "focusY":F
    .end local v23    # "previewBounds":Landroid/graphics/RectF;
    :cond_5
    return-void

    .line 1400
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1415
    .restart local v17    # "centerPoint":Landroid/graphics/PointF;
    .restart local v23    # "previewBounds":Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v21, v5, v6

    .line 1416
    .restart local v21    # "focusX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v22, v5, v6

    .restart local v22    # "focusY":F
    goto :goto_1

    .line 1420
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 1430
    sget-object v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-eqz v5, :cond_9

    const/16 v16, 0x1

    .line 1433
    .local v16, "canShowExposureIndicator":Z
    :goto_2
    if-eqz v16, :cond_d

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    if-nez v5, :cond_a

    .line 1437
    return-void

    .line 1430
    .end local v16    # "canShowExposureIndicator":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 1439
    .restart local v16    # "canShowExposureIndicator":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "showFocusIndicator() - Exposure"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    new-instance v18, Landroid/graphics/PointF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/PointF;-><init>()V

    .line 1445
    .local v18, "exposureCenterPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v5, :cond_b

    .line 1447
    const/high16 v19, 0x3f000000    # 0.5f

    .line 1448
    .local v19, "exposureX":F
    const/high16 v20, 0x3f000000    # 0.5f

    .line 1455
    .local v20, "exposureY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    const/4 v6, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/oneplus/camera/ui/Viewfinder;->pointFromPreview(FFLandroid/graphics/PointF;I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1456
    return-void

    .line 1452
    .end local v19    # "exposureX":F
    .end local v20    # "exposureY":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v19, v5, v6

    .line 1453
    .restart local v19    # "exposureX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v20, v5, v6

    .restart local v20    # "exposureY":F
    goto :goto_3

    .line 1457
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1465
    .end local v18    # "exposureCenterPoint":Landroid/graphics/PointF;
    .end local v19    # "exposureX":F
    .end local v20    # "exposureY":F
    :cond_d
    if-eqz p2, :cond_e

    .line 1467
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1468
    .local v14, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float v10, v5, v7

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v12, v5, v7

    const v5, 0x3fb33333    # 1.4f

    const v7, 0x3fb33333    # 1.4f

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1469
    .local v4, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1470
    .local v13, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1471
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 1472
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1473
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1474
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1475
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1476
    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1499
    if-eqz v16, :cond_e

    .line 1500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1367
    .end local v4    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v13    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_e
    return-void
.end method

.method private updateBaseViewLayout(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 1508
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1509
    :cond_0
    return-void

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    .line 1511
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 1506
    return-void
.end method

.method private updateExposureCompensationDragIconVisibility()V
    .locals 5

    .prologue
    .line 1519
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1521
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/oneplus/camera/Camera$MeteringRect;

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 1522
    .local v0, "isSensorFocus":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v4, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v4, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v3, v4, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 1523
    .local v1, "isSeparated":Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    const/16 v2, 0x8

    .line 1524
    .local v2, "visibility":I
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 1526
    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1516
    .end local v0    # "isSensorFocus":Z
    .end local v1    # "isSeparated":Z
    .end local v2    # "visibility":I
    :cond_2
    return-void

    .line 1521
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isSensorFocus":Z
    goto :goto_0

    .line 1522
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSeparated":Z
    goto :goto_1

    .line 1523
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "visibility":I
    goto :goto_2

    .line 1527
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method private updateFocusExposureLockIndicator()V
    .locals 5

    .prologue
    .line 1536
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateFocusExposureLockIndicator()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v1

    .line 1542
    .local v1, "isVisible":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1543
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    if-eqz v1, :cond_0

    .line 1545
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_2

    .line 1546
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1550
    .end local v1    # "isVisible":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 1552
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1555
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V

    .line 1556
    const/16 v2, 0x2711

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1559
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1565
    return-void

    .line 1546
    .restart local v1    # "isVisible":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "isVisible":Z
    goto :goto_0

    .line 1545
    .local v1, "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "isVisible":Z
    goto :goto_0

    .line 1569
    .end local v1    # "isVisible":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v2, :cond_3

    .line 1570
    const-class v2, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 1571
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v2, :cond_4

    .line 1572
    return-void

    .line 1575
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const v3, 0x7f0b002e

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    .line 1534
    :cond_5
    :goto_1
    return-void

    .line 1580
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isFocusLocked()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->isExposureLocked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1587
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto :goto_1

    .line 1582
    :cond_8
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1583
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    .line 1584
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_1

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 459
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 446
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_0

    .line 455
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 448
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 9

    .prologue
    const v6, 0x7f090095

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 995
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 998
    const-class v4, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ExposureController;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 999
    const-class v4, Lcom/oneplus/camera/FaceTracker;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/FaceTracker;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    .line 1000
    const-class v4, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/FocusController;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 1001
    const-class v4, Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/oneplus/camera/ui/TouchAutoExposureUI;

    .line 1002
    const-class v4, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 1003
    const-class v4, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 1006
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 1007
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v2

    .line 1008
    check-cast v4, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v4}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1009
    .local v0, "baseView":Landroid/view/View;
    const v4, 0x7f090090

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    .line 1010
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    const v5, 0x7f090091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    .line 1011
    const v4, 0x7f08007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    .line 1012
    const v4, 0x7f08007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    .line 1013
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f090092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    .line 1014
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f090093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    .line 1015
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f090094

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    .line 1016
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f090096

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    .line 1017
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    .line 1018
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1026
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1034
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 1035
    new-instance v4, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    const v5, 0x7f020044

    invoke-direct {v4, v2, v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    .line 1036
    new-instance v4, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    const v5, 0x7f020045

    invoke-direct {v4, v2, v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    .line 1037
    const/4 v4, 0x0

    invoke-direct {p0, v4, v8, v8}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    .line 1040
    const v4, 0x7f090089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    .line 1041
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    .line 1042
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    .line 1043
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    const v5, 0x7f02003b

    invoke-virtual {v2, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$3;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$3;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1052
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 1053
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$4;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$4;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1076
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1088
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$6;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$6;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1112
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1132
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$8;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$8;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1141
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v4, :cond_0

    .line 1143
    new-instance v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$9;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$9;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1151
    .local v1, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1152
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1153
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1154
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$10;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$10;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1162
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    .line 1163
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$11;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$11;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1172
    .end local v1    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v4, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v5, Lcom/oneplus/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/FaceTracker;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1184
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v4, :cond_4

    .line 1186
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$13;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$13;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1194
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$14;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$14;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1202
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$15;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$15;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1210
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$16;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$16;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1222
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v4, :cond_5

    .line 1224
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v5, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$17;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$17;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1237
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v4, :cond_2

    .line 1238
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v5, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    .line 1239
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v4, :cond_3

    .line 1241
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onAfRegionsChanged(Ljava/util/List;)V

    .line 1242
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/FocusState;

    invoke-direct {p0, v7, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;Lcom/oneplus/camera/FocusState;)V

    .line 1244
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->updateFocusExposureLockIndicator()V

    .line 992
    return-void

    .line 1221
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInitialize() - No FocusController"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInitialize() - No Viewfinder"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1258
    const/16 v0, 0x2715

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1259
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1255
    return-void
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
    .line 1267
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 1268
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->setCanFocusExposureSeparated(Z)V

    .line 1269
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
