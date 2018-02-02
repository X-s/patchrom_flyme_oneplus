.class final Lcom/oneplus/camera/ui/CaptureBar;
.super Lcom/oneplus/camera/UIComponent;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CaptureControlPanel;
.implements Lcom/oneplus/camera/ui/CaptureButtons;
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CaptureBar$10;,
        Lcom/oneplus/camera/ui/CaptureBar$11;,
        Lcom/oneplus/camera/ui/CaptureBar$12;,
        Lcom/oneplus/camera/ui/CaptureBar$13;,
        Lcom/oneplus/camera/ui/CaptureBar$14;,
        Lcom/oneplus/camera/ui/CaptureBar$15;,
        Lcom/oneplus/camera/ui/CaptureBar$16;,
        Lcom/oneplus/camera/ui/CaptureBar$17;,
        Lcom/oneplus/camera/ui/CaptureBar$1;,
        Lcom/oneplus/camera/ui/CaptureBar$2;,
        Lcom/oneplus/camera/ui/CaptureBar$3;,
        Lcom/oneplus/camera/ui/CaptureBar$4;,
        Lcom/oneplus/camera/ui/CaptureBar$5;,
        Lcom/oneplus/camera/ui/CaptureBar$6;,
        Lcom/oneplus/camera/ui/CaptureBar$7;,
        Lcom/oneplus/camera/ui/CaptureBar$8;,
        Lcom/oneplus/camera/ui/CaptureBar$9;,
        Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;,
        Lcom/oneplus/camera/ui/CaptureBar$BaseProgressDrawable;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;,
        Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$IconButton;,
        Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;,
        Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FlashModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I = null

.field private static final BURST_TRIGGER_THRESHOLD:J = 0x1f4L

.field private static final BUTTON_ANIMATION_DURATION:J = 0x96L

.field private static final DEFAULT_SCENE_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISABLE_CAPTURE_UI:Ljava/lang/String; = "PhotoResolutionChange"

.field private static final ENABLE_DEBUG_MODE_COUNT:I = 0x5

.field public static final EVENT_CUSTOM_MODE_CLICK:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLASH_BUTTON_AUTO_ON_ANIMATION_DURATION:I = 0xc8

.field public static final MIN_KEY_DOWN_INTERVAL:J = 0x190L

.field private static final MSG_CAPTURE_UI_ENABLED:I = 0x271a

.field private static final MSG_ENANLE_DEBUG_MODE:I = 0x2724

.field private static final MSG_SHOW_FLASH_DISABLED_TOAST:I = 0x272e

.field private static final MSG_START_BURST_CAPTURE:I = 0x2710

.field private static final PENDING_BUTTON_CLICK_DURATION:J = 0x320L

.field private static final PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field private static final SCENE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECTED_ICON_ALPHA:F = 1.0f

.field private static final SWITCH_BUTTON_ANIMATION_DURATION:I = 0x181

.field private static final TOAST_DELAYED_THRESHOLD:I = 0x1f4

.field private static final UNSELECTED_ICON_ALPHA:F = 0.4f


# instance fields
.field private m_ActionButtonGroup:Landroid/widget/LinearLayout;

.field private m_BackupFaceBeauty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_BackupFlashModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Lcom/oneplus/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_BackupScenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_BokehModeIndicator:Landroid/widget/ImageView;

.field private m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_BokehUI:Lcom/oneplus/camera/bokeh/BokehUI;

.field private m_CaptureBar:Landroid/view/View;

.field private final m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureBarActionIconLayout:Landroid/view/View;

.field private m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

.field private m_CountdownOnClickListener:Landroid/view/View$OnClickListener;

.field private m_DebugModeClickCount:I

.field private m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

.field private final m_EmptyTouchListener:Landroid/view/View$OnTouchListener;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_ExternalKeyPerformButtonClickTime:J

.field private m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

.field private m_FaceBeautyIconOnClickListener:Landroid/view/View$OnClickListener;

.field private m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

.field private m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

.field private m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

.field private m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

.field private m_FlashButtonResId:I

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

.field private m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field private m_FlashIconOnClickListener:Landroid/view/View$OnClickListener;

.field private m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

.field private m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

.field private m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_HdrHqOnClickListener:Landroid/view/View$OnClickListener;

.field private final m_HideBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_InternalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_IsBokehCapturingIconShown:Z

.field private m_IsCapturingBurstPhotoReceived:Z

.field private m_IsCapturingBurstPhotos:Z

.field private m_IsCreatingCustomSetting:Z

.field private m_IsFlashDisabledReasonChanged:Z

.field private m_IsHwPrimaryButtonPressed:Z

.field private m_IsPrimaryButtonPressed:Z

.field private m_IsReadyToCapture:Z

.field private m_IsRestartPreviewNeeded:Z

.field private m_IsSelfTimerAnimationStarted:Z

.field private m_IsSwitchingCameraAnimationStarted:Z

.field private m_IsSwitchingCaptureModeAnimationStarted:Z

.field private m_IsUpdateFlashButtonScheduled:Z

.field private final m_KeyDownEventTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m_KeyUpEventTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_ManualCustomSettings:Lcom/oneplus/base/Settings;

.field private m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_ManualModeCustomOnClickListener:Landroid/view/View$OnClickListener;

.field private m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

.field private m_ManualSettingButtonText:Landroid/widget/TextView;

.field private m_ManualSettingButtonTextContainer:Landroid/widget/RelativeLayout;

.field private m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

.field private m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private final m_PanelStyleHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PendingPrimaryButtonPressedTime:J

.field private m_PendingPrimaryButtonReleasedTime:J

.field private m_PendingPrimaryButtonReleasedTimeParam:Z

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_PhotoModeIndicator:Landroid/widget/ImageView;

.field private m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_PostViewReceived:Z

.field private m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCoverHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

.field private m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

.field private m_PrimaryButton:Landroid/widget/ImageButton;

.field private final m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

.field private m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field private final m_PrimaryButtonIconHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

.field private final m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_RawOnClickListener:Landroid/view/View$OnClickListener;

.field private m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

.field private final m_ResetPrimaryCameraButtonIconRunnable:Ljava/lang/Runnable;

.field private final m_ResetSwitchCameraButtonIconRunnable:Ljava/lang/Runnable;

.field private m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ResolutionOnClickListener:Landroid/view/View$OnClickListener;

.field private m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

.field private m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Scenes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

.field private m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

.field private m_SecondLayerBarHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

.field private m_SecondaryButton:Landroid/widget/ImageButton;

.field private m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field private m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

.field private m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

.field private m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

.field private m_SelfTimerHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

.field private m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_Settings:Lcom/oneplus/base/Settings;

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

.field private final m_ShowBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private m_SimpleUIModeHideActionIconsHandle:Lcom/oneplus/base/Handle;

.field private m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

.field private m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

.field private m_SmileCaptureOnClickListener:Landroid/view/View$OnClickListener;

.field private m_SwitchCameraButton:Landroid/widget/ImageButton;

.field private m_SwitchCameraButtonAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private m_SwitcherHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

.field private m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

.field private final m_UpdateFlashButtonRunnable:Ljava/lang/Runnable;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_VideoModeIndicator:Landroid/widget/ImageView;

.field private m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_VideoRecordingPauseResumeAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

.field private m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->DEFAULT_SCENE_ORDER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FaceBeautyController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FlashController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/camera/ui/CaptureBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsReadyToCapture:Z

    return v0
.end method

.method static synthetic -get14(Lcom/oneplus/camera/ui/CaptureBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCameraAnimationStarted:Z

    return v0
.end method

.method static synthetic -get15(Lcom/oneplus/camera/ui/CaptureBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCaptureModeAnimationStarted:Z

    return v0
.end method

.method static synthetic -get16(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/manual/ManualModeUI;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    return-object v0
.end method

.method static synthetic -get18(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonTextContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get19(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ActionButtonGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get20(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get21(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get22(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object v0
.end method

.method static synthetic -get23(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get24(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    return-object v0
.end method

.method static synthetic -get25(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResetSwitchCameraButtonIconRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get26(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get27(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get28(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object v0
.end method

.method static synthetic -get29(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get30(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get31(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SimpleUIModeHideActionIconsHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get32(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get33(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButtonAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic -get34(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitcherHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object v0
.end method

.method static synthetic -get35(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->values()[Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CALLING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CAMERA_GALLERY_OPENING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->HIGH_DEVICE_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_EFFECT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->USING_WIFI_HOTSPOT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-FlashModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FlashMode;->values()[Lcom/oneplus/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-FlashModeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->values()[Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->MANUAL_MODE_CUSTOM:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RAW:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RESOLUTION:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->SELF_TIMER:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->values()[Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->PAUSE_RESUME_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->values()[Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FLASH:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->SMILE_CAPTURE:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->values()[Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->values()[Lcom/oneplus/camera/ui/CaptureButtons$Button;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->values()[Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

    const/16 v2, 0x30

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

    const/16 v2, 0x31

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
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/CaptureBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set10(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -set11(Lcom/oneplus/camera/ui/CaptureBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PostViewReceived:Z

    return p1
.end method

.method static synthetic -set12(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set13(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object p1
.end method

.method static synthetic -set14(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object p1
.end method

.method static synthetic -set15(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerHideActionIconsHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object p1
.end method

.method static synthetic -set16(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SimpleUIModeHideActionIconsHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set17(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitcherHideActionIconHandle:Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_InternalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/ui/CaptureBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsReadyToCapture:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/ui/CaptureBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCameraAnimationStarted:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/camera/ui/CaptureBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCaptureModeAnimationStarted:Z

    return p1
.end method

.method static synthetic -set7(Lcom/oneplus/camera/ui/CaptureBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsUpdateFlashButtonScheduled:Z

    return p1
.end method

.method static synthetic -set8(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Settings;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/manual/ManualModeUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/CaptureBar;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;)Z
    .locals 1
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->isModeIndicatorNeeded(Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onCaptureUIDisabled()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onCountDownSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onFlashSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onHdrHqSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onItemClicked(Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onManualSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPostInitialize()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onPostViewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->onPreviewCoverStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/ui/CaptureBar;Z)V
    .locals 0
    .param p1, "isHwButton"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;)Z
    .locals 1
    .param p1, "oldMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "newMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->startModeChangeAnimation(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onRawSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onResolutionSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onSecondaryButtonClicked()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onSmileCaptureSecondLayerItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonBackground(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonIcon(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonStyle(Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap30(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonVisibility(Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restorePanelStyle(Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
    .param p2, "enable"    # Z
    .param p3, "updateSeekBar"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar;->setFaceBeautyEnabled(Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->showCaptureBarActionIconLayout(Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->swtichCaptureMode(Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/oneplus/camera/ui/CaptureBar;Z)V
    .locals 0
    .param p1, "updateBackground"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonFunctions(Z)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    return-void
.end method

.method static synthetic -wrap38(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateCaptureBarVisibility()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/media/MediaType;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap40(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautyButton()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautySecondLayerSeekBar()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButtonDelay()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButton()V

    return-void
.end method

.method static synthetic -wrap44(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateHdrHqButton()V

    return-void
.end method

.method static synthetic -wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateManualModeCustomButton()V

    return-void
.end method

.method static synthetic -wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateManualModeSavingButton()V

    return-void
.end method

.method static synthetic -wrap47(Lcom/oneplus/camera/ui/CaptureBar;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->updateModeIndicator(Z)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V
    .locals 0
    .param p1, "oldMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "newMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p3, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar;->updateModeIndicator(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updatePanelStyle()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/CaptureBar;Ljava/lang/String;Z)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "animation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->hideCaptureBarActionIconLayout(Ljava/lang/String;Z)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap50(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateRawButton()V

    return-void
.end method

.method static synthetic -wrap51(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateResolutionButton()V

    return-void
.end method

.method static synthetic -wrap52(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSelfTimerButton()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSettinsEventHandler()V

    return-void
.end method

.method static synthetic -wrap54(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSmileCaptureButton()V

    return-void
.end method

.method static synthetic -wrap55(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButtonVisibility()V

    return-void
.end method

.method static synthetic -wrap56(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButton()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateVideoPauseResumeButton()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->disableCaptureModeIndicators()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->enableCaptureModeIndicators()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onCaptureStarted(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CustomModeClick"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_CUSTOM_MODE_CLICK:Lcom/oneplus/base/EventKey;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "Auto-HDR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "HDR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "ClearShot"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 123
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->DEFAULT_SCENE_ORDER:Ljava/util/List;

    .line 136
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 141
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$1;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/CaptureBar$1;-><init>()V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar;->SCENE_COMPARATOR:Ljava/util/Comparator;

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 712
    const-string/jumbo v0, "Capture Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFaceBeauty:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    .line 186
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$2;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_EmptyTouchListener:Landroid/view/View$OnTouchListener;

    .line 205
    sget-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyDownEventTime:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyUpEventTime:Landroid/util/SparseArray;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    .line 249
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 250
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    .line 251
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 252
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    .line 253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    .line 263
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 299
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$3;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionOnClickListener:Landroid/view/View$OnClickListener;

    .line 307
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$4;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomOnClickListener:Landroid/view/View$OnClickListener;

    .line 315
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$5;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CountdownOnClickListener:Landroid/view/View$OnClickListener;

    .line 323
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$6;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqOnClickListener:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$7;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureOnClickListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$8;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$9;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$10;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawOnClickListener:Landroid/view/View$OnClickListener;

    .line 374
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$11;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResetSwitchCameraButtonIconRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$12;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$12;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResetPrimaryCameraButtonIconRunnable:Ljava/lang/Runnable;

    .line 399
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$13;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$13;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_UpdateFlashButtonRunnable:Ljava/lang/Runnable;

    .line 414
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$14;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$14;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    .line 438
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$15;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$15;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 449
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$16;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$16;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HideBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 472
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$17;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar$17;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ShowBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 710
    return-void
.end method

.method private addViewToActionGroup(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 723
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ActionButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 717
    return-void
.end method

.method private changeFaceBeautyByScene(Lcom/oneplus/camera/scene/Scene;)V
    .locals 11
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 731
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v6, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    .line 736
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-nez v1, :cond_1

    .line 738
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "changeFaceBeautyByScene() - Camera is null"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void

    .line 741
    :cond_1
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    .line 742
    .local v3, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v6, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 746
    .local v2, "faceBeauty":Ljava/lang/Boolean;
    move-object v4, v2

    .line 747
    .local v4, "targetFaceBeauty":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFaceBeauty:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 748
    .local v0, "backupFaceBeauty":Ljava/lang/Boolean;
    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v5, :cond_5

    .line 750
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 751
    if-nez v0, :cond_2

    .line 752
    move-object v0, v2

    .line 761
    :cond_2
    :goto_0
    if-ne v4, v0, :cond_3

    .line 762
    const/4 v0, 0x0

    .line 763
    .end local v0    # "backupFaceBeauty":Ljava/lang/Boolean;
    :cond_3
    if-nez v0, :cond_6

    .line 764
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFaceBeauty:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "changeFaceBeautyByScene() - Scene: "

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    const-string/jumbo v8, ", current face beauty: "

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const-string/jumbo v8, ", target face beauty: "

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const-string/jumbo v8, ", backup face beauty: "

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x6

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    if-eq v2, v4, :cond_4

    .line 772
    sget-object v5, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v5, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->setFaceBeautyEnabled(Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V

    .line 728
    :cond_4
    return-void

    .line 756
    .restart local v0    # "backupFaceBeauty":Ljava/lang/Boolean;
    :cond_5
    if-eqz v0, :cond_2

    .line 757
    move-object v4, v0

    goto :goto_0

    .line 766
    .end local v0    # "backupFaceBeauty":Ljava/lang/Boolean;
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFaceBeauty:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private changeFlashModeByScene(Lcom/oneplus/camera/scene/Scene;)V
    .locals 13
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    const/4 v12, 0x1

    .line 781
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    .line 782
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-nez v1, :cond_0

    .line 784
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "changeFlashModeByScene() - Camera is null"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void

    .line 787
    :cond_0
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$LensFacing;

    .line 788
    .local v4, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v8, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 792
    .local v5, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    sget-object v7, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 793
    .local v3, "isFlashAutoSupported":Z
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v8, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashMode;

    .line 794
    .local v2, "flashMode":Lcom/oneplus/camera/FlashMode;
    move-object v6, v2

    .line 795
    .local v6, "targetFlashMode":Lcom/oneplus/camera/FlashMode;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashMode;

    .line 796
    .local v0, "backupFlashMode":Lcom/oneplus/camera/FlashMode;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 851
    :cond_1
    :goto_0
    if-ne v6, v0, :cond_2

    .line 852
    const/4 v0, 0x0

    .line 853
    .end local v0    # "backupFlashMode":Lcom/oneplus/camera/FlashMode;
    :cond_2
    if-nez v0, :cond_a

    .line 854
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "changeFlashModeByScene() - New scene: "

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const-string/jumbo v10, ", current flash: "

    aput-object v10, v9, v12

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const-string/jumbo v10, ", target flash: "

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const/4 v10, 0x4

    aput-object v6, v9, v10

    const-string/jumbo v10, ", backup flash: "

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const/4 v10, 0x6

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    invoke-interface {v7, v6, v12}, Lcom/oneplus/camera/FlashController;->setFlashMode(Lcom/oneplus/camera/FlashMode;I)V

    .line 778
    return-void

    .line 800
    .restart local v0    # "backupFlashMode":Lcom/oneplus/camera/FlashMode;
    :pswitch_0
    instance-of v7, p1, Lcom/oneplus/camera/scene/HdrScene;

    if-nez v7, :cond_3

    instance-of v7, p1, Lcom/oneplus/camera/scene/ClearShot;

    if-eqz v7, :cond_4

    .line 802
    :cond_3
    sget-object v6, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    .line 803
    if-nez v0, :cond_1

    .line 804
    move-object v0, v2

    goto :goto_0

    .line 806
    :cond_4
    sget-object v7, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne p1, v7, :cond_1

    .line 808
    if-eqz v0, :cond_1

    .line 809
    move-object v6, v0

    goto :goto_0

    .line 815
    :pswitch_1
    instance-of v7, p1, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v7, :cond_6

    .line 817
    if-eqz v3, :cond_5

    .line 818
    sget-object v6, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    .line 821
    :goto_2
    if-nez v0, :cond_1

    .line 822
    move-object v0, v2

    goto :goto_0

    .line 820
    :cond_5
    sget-object v6, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 824
    :cond_6
    instance-of v7, p1, Lcom/oneplus/camera/scene/HdrScene;

    if-nez v7, :cond_7

    instance-of v7, p1, Lcom/oneplus/camera/scene/ClearShot;

    if-eqz v7, :cond_1

    .line 826
    :cond_7
    sget-object v6, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    .line 827
    if-nez v0, :cond_1

    .line 828
    move-object v0, v2

    goto :goto_0

    .line 834
    :pswitch_2
    if-eqz v0, :cond_1

    .line 836
    instance-of v7, p1, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v7, :cond_9

    .line 838
    if-eqz v3, :cond_8

    .line 839
    sget-object v6, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    goto :goto_0

    .line 841
    :cond_8
    sget-object v6, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_0

    .line 843
    :cond_9
    sget-object v7, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne p1, v7, :cond_1

    .line 844
    move-object v6, v0

    goto :goto_0

    .line 856
    .end local v0    # "backupFlashMode":Lcom/oneplus/camera/FlashMode;
    :cond_a
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private changeResolution(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 6
    .param p1, "targetResolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 868
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 869
    .local v1, "state":Lcom/oneplus/camera/OperationState;
    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeResolution() - Failed to change resolution, state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return v5

    .line 875
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v2, :cond_1

    .line 877
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeResolution() - No resolutionManager! Could not change photo resolution"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return v5

    .line 881
    :cond_1
    if-nez p1, :cond_2

    .line 883
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeResolution() - No resolution to change"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return v5

    .line 887
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_3

    .line 889
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3, p1}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 890
    return v4

    .line 894
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCameraPreviewRestartNeed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsRestartPreviewNeeded:Z

    .line 896
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 897
    .local v0, "currentPreviewSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3, p1}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 898
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 899
    return v4

    .line 902
    :cond_4
    return v5
.end method

.method private changeScene(Lcom/oneplus/camera/scene/Scene;Z)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "fromUser"    # Z

    .prologue
    .line 910
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "SceneChange"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeScene() - Scene: "

    const-string/jumbo v2, ", from user: "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 916
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 919
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne p1, v0, :cond_2

    .line 920
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashDisabledMessage()V

    .line 925
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

    .line 907
    return-void

    .line 916
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 922
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->hideFlashDisabledMessage()V

    goto :goto_1
.end method

.method private changeSceneByFaceBeauty(Z)V
    .locals 13
    .param p1, "faceBeautyEnabled"    # Z

    .prologue
    const/4 v12, 0x0

    .line 933
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v8, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 934
    return-void

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 938
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_1

    .line 940
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "changeSceneByFaceBeauty() - Camera is null"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    return-void

    .line 943
    :cond_1
    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera$LensFacing;

    .line 944
    .local v5, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFaceBeauty:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v8, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/scene/Scene;

    .line 948
    .local v3, "currentScene":Lcom/oneplus/camera/scene/Scene;
    move-object v6, v3

    .line 949
    .local v6, "targetScene":Lcom/oneplus/camera/scene/Scene;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 950
    .local v1, "backupScene":Lcom/oneplus/camera/scene/Scene;
    if-eqz p1, :cond_5

    .line 952
    sget-object v6, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    .line 953
    if-nez v1, :cond_2

    .line 954
    move-object v1, v3

    .line 969
    :cond_2
    :goto_0
    if-ne v6, v1, :cond_3

    .line 970
    const/4 v1, 0x0

    .line 971
    .end local v1    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    :cond_3
    if-nez v1, :cond_7

    .line 972
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "changeSceneByFaceBeauty() - Face beauty: "

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v12

    const-string/jumbo v10, ", current scene: "

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const-string/jumbo v10, ", target scene: "

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const/4 v10, 0x4

    aput-object v6, v9, v10

    const-string/jumbo v10, ", backup scene: "

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const/4 v10, 0x6

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    if-eq v6, v3, :cond_4

    .line 980
    invoke-direct {p0, v6, v12}, Lcom/oneplus/camera/ui/CaptureBar;->changeScene(Lcom/oneplus/camera/scene/Scene;Z)V

    .line 930
    :cond_4
    return-void

    .line 958
    .restart local v1    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    :cond_5
    if-eqz v1, :cond_2

    .line 960
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v8, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/FlashMode;

    .line 961
    .local v4, "flashMode":Lcom/oneplus/camera/FlashMode;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    const-string/jumbo v8, "Auto-HDR"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    .line 962
    .local v0, "autoHdrScene":Lcom/oneplus/camera/scene/Scene;
    sget-object v7, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq v4, v7, :cond_6

    .line 963
    sget-object v7, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    if-ne v4, v7, :cond_2

    if-eqz v0, :cond_2

    if-ne v1, v0, :cond_2

    .line 964
    :cond_6
    move-object v6, v1

    goto :goto_0

    .line 974
    .end local v0    # "autoHdrScene":Lcom/oneplus/camera/scene/Scene;
    .end local v1    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    .end local v4    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private changeSceneByFlashMode(Lcom/oneplus/camera/FlashMode;)V
    .locals 12
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 989
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v8, :cond_0

    .line 991
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeSceneByFlashMode() - Camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void

    .line 994
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/Camera$LensFacing;

    .line 995
    .local v11, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupFlashModes:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    const-string/jumbo v1, "Auto-HDR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/scene/Scene;

    .line 999
    .local v7, "autoHdrScene":Lcom/oneplus/camera/scene/Scene;
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 1000
    .local v2, "currentScene":Lcom/oneplus/camera/scene/Scene;
    move-object v4, v2

    .line 1001
    .local v4, "targetScene":Lcom/oneplus/camera/scene/Scene;
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/scene/Scene;

    .line 1002
    .local v6, "backupScene":Lcom/oneplus/camera/scene/Scene;
    instance-of v0, v2, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v0, :cond_5

    .line 1004
    sget-object v0, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_4

    .line 1006
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    .line 1007
    if-nez v6, :cond_1

    .line 1008
    move-object v6, v2

    .line 1045
    :cond_1
    :goto_0
    if-ne v6, v4, :cond_2

    .line 1046
    const/4 v6, 0x0

    .line 1047
    .end local v6    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    if-nez v6, :cond_c

    .line 1048
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeSceneByFlashMode() - Change scene by flash mode, current scene: "

    const-string/jumbo v3, ", target scene: "

    const-string/jumbo v5, ", backup scene: "

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1055
    if-eq v4, v2, :cond_3

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeScene(Lcom/oneplus/camera/scene/Scene;Z)V

    .line 985
    :cond_3
    return-void

    .line 1010
    .restart local v6    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    :cond_4
    sget-object v0, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_1

    .line 1012
    if-eqz v6, :cond_1

    .line 1013
    move-object v4, v6

    goto :goto_0

    .line 1016
    :cond_5
    instance-of v0, v2, Lcom/oneplus/camera/scene/HdrScene;

    if-nez v0, :cond_6

    instance-of v0, v2, Lcom/oneplus/camera/scene/ClearShot;

    if-eqz v0, :cond_8

    .line 1018
    :cond_6
    sget-object v0, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_7

    .line 1020
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    .line 1021
    if-nez v6, :cond_1

    .line 1022
    move-object v6, v2

    goto :goto_0

    .line 1024
    :cond_7
    sget-object v0, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_1

    if-eqz v7, :cond_1

    .line 1026
    move-object v4, v7

    .line 1027
    if-nez v6, :cond_1

    .line 1028
    move-object v6, v2

    goto :goto_0

    .line 1031
    :cond_8
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne v2, v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v1, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1034
    .local v10, "isFaceBeautyStandalone":Z
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v1, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v9, 0x0

    .line 1035
    .local v9, "isFaceBeautyDisabled":Z
    :goto_2
    if-eqz v6, :cond_1

    if-nez v10, :cond_9

    if-eqz v9, :cond_1

    .line 1037
    :cond_9
    sget-object v0, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_b

    if-eqz v7, :cond_b

    .line 1038
    move-object v4, v7

    goto :goto_0

    .line 1034
    .end local v9    # "isFaceBeautyDisabled":Z
    :cond_a
    const/4 v9, 0x1

    .restart local v9    # "isFaceBeautyDisabled":Z
    goto :goto_2

    .line 1039
    :cond_b
    sget-object v0, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-ne p1, v0, :cond_1

    .line 1040
    move-object v4, v6

    goto :goto_0

    .line 1050
    .end local v6    # "backupScene":Lcom/oneplus/camera/scene/Scene;
    .end local v9    # "isFaceBeautyDisabled":Z
    .end local v10    # "isFaceBeautyStandalone":Z
    :cond_c
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BackupScenes:Ljava/util/Map;

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private checkCameraPrevewRestartNeeded()V
    .locals 4

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCameraPrevewRestartNeeded(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsRestartPreviewNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsRestartPreviewNeeded:Z

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1067
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1061
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    :goto_0
    return-void

    .line 1071
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkCameraPrevewRestartNeeded(): startCameraPreview!"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 1073
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsRestartPreviewNeeded:Z

    goto :goto_0

    .line 1067
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disableCaptureModeIndicators()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1087
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1085
    :cond_2
    return-void
.end method

.method private enableCaptureModeIndicators()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1099
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1097
    :cond_2
    return-void
.end method

.method private getFlashDisabledMessageText(Lcom/oneplus/camera/FlashController$FlashDisabledReason;)I
    .locals 3
    .param p1, "reason"    # Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .prologue
    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "resId":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v2, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1155
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1134
    :pswitch_1
    const v0, 0x7f0d004f

    .line 1135
    goto :goto_0

    .line 1137
    :pswitch_2
    const v0, 0x7f0d0050

    .line 1138
    goto :goto_0

    .line 1140
    :pswitch_3
    const v0, 0x7f0d0051

    .line 1141
    goto :goto_0

    .line 1143
    :pswitch_4
    const v0, 0x7f0d0052

    .line 1144
    goto :goto_0

    .line 1146
    :pswitch_5
    const v0, 0x7f0d0053

    .line 1147
    goto :goto_0

    .line 1149
    :pswitch_6
    const v0, 0x7f0d0054

    .line 1150
    goto :goto_0

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private getResolutionResId(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/MediaType;)I
    .locals 4
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 1208
    const/4 v1, 0x0

    .line 1210
    .local v1, "resId":I
    if-nez p1, :cond_0

    .line 1211
    return v1

    .line 1213
    :cond_0
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v2, :cond_4

    .line 1215
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    .line 1216
    .local v0, "photoRatio":Lcom/oneplus/util/AspectRatio;
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_2

    .line 1217
    const v1, 0x7f02012f

    .line 1238
    .end local v0    # "photoRatio":Lcom/oneplus/util/AspectRatio;
    :cond_1
    :goto_0
    return v1

    .line 1218
    .restart local v0    # "photoRatio":Lcom/oneplus/util/AspectRatio;
    :cond_2
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_3

    .line 1219
    const v1, 0x7f02012d

    goto :goto_0

    .line 1220
    :cond_3
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_1

    .line 1221
    const v1, 0x7f02012e

    goto :goto_0

    .line 1225
    .end local v0    # "photoRatio":Lcom/oneplus/util/AspectRatio;
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1226
    const v1, 0x7f020112

    goto :goto_0

    .line 1227
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1229
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_6

    .line 1230
    const v1, 0x7f02010e

    goto :goto_0

    .line 1232
    :cond_6
    const v1, 0x7f020110

    goto :goto_0

    .line 1234
    :cond_7
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1235
    const v1, 0x7f020114

    goto :goto_0
.end method

.method private getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    return-object v0

    .line 1114
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar$18;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Landroid/widget/ImageView;I)V

    return-object v0
.end method

.method private hideCaptureBarActionIconLayout(Ljava/lang/String;Z)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "animation"    # Z

    .prologue
    .line 1294
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/lang/String;)V

    .line 1295
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1297
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideCaptureBarActionIconLayout() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1301
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconLayout:Landroid/view/View;

    if-eqz p2, :cond_1

    const-wide/16 v4, 0x12c

    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1304
    :cond_0
    return-object v0

    .line 1301
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private hideFlashDisabledMessage()V
    .locals 1

    .prologue
    .line 1311
    const/16 v0, 0x272e

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1312
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    .line 1309
    return-void
.end method

.method private isBokehMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1319
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_0

    .line 1320
    return v3

    .line 1321
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1322
    .local v0, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v1, v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v1, :cond_1

    .line 1323
    const/4 v1, 0x1

    return v1

    .line 1324
    :cond_1
    return v3
.end method

.method private isCameraPreviewRestartNeed()Z
    .locals 3

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1332
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1339
    const/4 v1, 0x0

    return v1

    .line 1336
    :pswitch_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    .line 1337
    const/4 v1, 0x1

    return v1

    .line 1332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCapturingBokeh()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1347
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isBokehMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    return v3

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehUI:Lcom/oneplus/camera/bokeh/BokehUI;

    if-nez v0, :cond_1

    .line 1350
    const-class v0, Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/bokeh/BokehUI;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehUI:Lcom/oneplus/camera/bokeh/BokehUI;

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehUI:Lcom/oneplus/camera/bokeh/BokehUI;

    if-nez v0, :cond_2

    .line 1352
    return v3

    .line 1353
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1358
    return v3

    .line 1356
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehUI:Lcom/oneplus/camera/bokeh/BokehUI;

    sget-object v1, Lcom/oneplus/camera/bokeh/BokehUI;->PROP_HAS_BOKEH_EFFECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/bokeh/BokehUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isModeIndicatorNeeded(Lcom/oneplus/camera/capturemode/CaptureMode;)Z
    .locals 1
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 1366
    instance-of v0, p1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-nez v0, :cond_0

    .line 1367
    instance-of v0, p1, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    .line 1366
    if-nez v0, :cond_0

    .line 1368
    instance-of v0, p1, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    .line 1366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPrimaryButtonAvailable()Z
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToOnScreenHint()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1383
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_0

    .line 1384
    return v1

    .line 1385
    :cond_0
    const-class v0, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 1386
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_1

    .line 1387
    return v1

    .line 1388
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private linkToToastManager()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1395
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-eqz v0, :cond_0

    .line 1396
    return v1

    .line 1397
    :cond_0
    const-class v0, Lcom/oneplus/camera/ui/ToastManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ToastManager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    .line 1398
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-eqz v0, :cond_1

    .line 1399
    return v1

    .line 1400
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1408
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    return-void

    .line 1411
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    if-eqz v1, :cond_1

    .line 1412
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotoReceived:Z

    .line 1415
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d/20"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, "hint":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1417
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v1, v2, v0, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 1405
    :cond_2
    :goto_0
    return-void

    .line 1420
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->linkToOnScreenHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1421
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/16 v2, 0xb

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 1429
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1427
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1432
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1435
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - Unknown capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 1439
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1443
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 1444
    .local v0, "internalCaptureHandle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v0, :cond_0

    .line 1445
    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_InternalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto :goto_0

    .line 1429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onCaptureUIDisabled()V
    .locals 2

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->disableCaptureModeIndicators()V

    .line 1456
    return-void
.end method

.method private onCaptureUIEnabled()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x320

    const/4 v4, 0x0

    .line 1470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1471
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-eqz v2, :cond_2

    .line 1473
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    .line 1475
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureUIEnabled() - Handle pending primary button pressing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 1477
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed(Z)V

    .line 1500
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1501
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->enableCaptureModeIndicators()V

    .line 1467
    :cond_1
    return-void

    .line 1482
    :cond_2
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 1484
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    iget-wide v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1486
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureUIEnabled() - Handle pending primary button pressing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed(Z)V

    .line 1491
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureUIEnabled() - Handle pending primary button releasing, m_PendingPrimaryButtonReleasedTimeParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTimeParam:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTimeParam:Z

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased(Z)V

    goto :goto_0

    .line 1490
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    goto :goto_1

    .line 1496
    :cond_4
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    goto :goto_0
.end method

.method private onCountDownSecondLayerItemClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 1512
    :cond_0
    return-void

    .line 1516
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1517
    .local v0, "seconds":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1518
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1506
    return-void
.end method

.method private onFlashSecondLayerItemClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_0

    .line 1527
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_0

    .line 1529
    return-void

    .line 1531
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1532
    return-void

    .line 1535
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v3, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1537
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashDisabledMessage()V

    .line 1538
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I

    move-result-object v3

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v4, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1555
    :cond_2
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashMode;

    .line 1558
    .local v0, "flashMode":Lcom/oneplus/camera/FlashMode;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    .line 1559
    .local v1, "mediaType":Lcom/oneplus/camera/media/MediaType;
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_3

    .line 1560
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeSceneByFlashMode(Lcom/oneplus/camera/FlashMode;)V

    .line 1563
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/oneplus/camera/FlashController;->setFlashMode(Lcom/oneplus/camera/FlashMode;I)V

    .line 1564
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1566
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFlashSecondLayerItemClicked() - Flash button click, flash: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1523
    return-void

    .line 1541
    .end local v0    # "flashMode":Lcom/oneplus/camera/FlashMode;
    .end local v1    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1542
    return-void

    .line 1544
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1545
    return-void

    .line 1547
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1548
    return-void

    .line 1538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onHdrHqSecondLayerItemClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1574
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 1577
    :cond_0
    return-void

    .line 1581
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    .line 1582
    .local v0, "newScene":Lcom/oneplus/camera/scene/Scene;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v1, :cond_4

    .line 1585
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v2, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1589
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeFaceBeautyByScene(Lcom/oneplus/camera/scene/Scene;)V

    .line 1592
    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->changeScene(Lcom/oneplus/camera/scene/Scene;Z)V

    .line 1605
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    .line 1606
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeFlashModeByScene(Lcom/oneplus/camera/scene/Scene;)V

    .line 1614
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1571
    return-void

    .line 1598
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->changeScene(Lcom/oneplus/camera/scene/Scene;Z)V

    .line 1601
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeFaceBeautyByScene(Lcom/oneplus/camera/scene/Scene;)V

    goto :goto_0

    .line 1610
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onButtonItemClicked() - No SceneManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneChangeCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1
.end method

.method private onItemClicked(Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V
    .locals 11
    .param p1, "item"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 2418
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    return-void

    .line 2420
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v3, :cond_1

    .line 2421
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v3, :cond_1

    .line 2422
    return-void

    .line 2425
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v0, :cond_2

    .line 2426
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v0, v3, v5}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 2429
    :cond_2
    iget-object v6, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    .line 2430
    .local v6, "button":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2431
    .local v7, "buttonContainer":Landroid/view/View;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 2432
    .local v8, "coords":[I
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2433
    aget v0, v8, v5

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 2434
    .local v1, "centerX":F
    const/4 v0, 0x1

    aget v0, v8, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 2437
    .local v2, "centerY":F
    iget-object v9, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->object:Ljava/lang/Object;

    .line 2438
    .local v9, "obj":Ljava/lang/Object;
    instance-of v0, v9, Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_6

    .line 2441
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v0, :cond_3

    .line 2443
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFlashButtonClicked() - No flash controller"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    return-void

    .line 2446
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v3, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2448
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashDisabledMessage()V

    .line 2449
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v4, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v0}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 2466
    :cond_4
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareFlashImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    .line 2415
    :cond_5
    :goto_0
    return-void

    .line 2452
    :pswitch_1
    return-void

    .line 2454
    :pswitch_2
    return-void

    .line 2456
    :pswitch_3
    return-void

    .line 2458
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2459
    return-void

    .line 2468
    :cond_6
    instance-of v0, v9, Lcom/oneplus/camera/SmileCaptureController;

    if-eqz v0, :cond_8

    .line 2471
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-nez v0, :cond_7

    .line 2473
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onButtonItemClicked() - No smile capture controller"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    return-void

    .line 2478
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareSmileCaptureImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2480
    :cond_8
    instance-of v0, v9, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    if-eqz v0, :cond_5

    move-object v10, v9

    .line 2482
    check-cast v10, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 2483
    .local v10, "type":Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$ActionButtonTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {v10}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2494
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v0, :cond_9

    .line 2496
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onItemClicked() - No face beauty controller"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    return-void

    .line 2486
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareCountDownImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2489
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareResolutionImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2499
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->setupFaceBeautyUI()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2501
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onItemClicked() - Cannot setup face beauty UI"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    return-void

    .line 2506
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautySecondLayerButton()V

    .line 2507
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautySecondLayerSeekBar()V

    .line 2510
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareFaceBeautyImageViewList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;Landroid/widget/ProgressBar;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 2514
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareHdrHqImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 2517
    :pswitch_9
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareManualModeCustomImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    .line 2518
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_CUSTOM_MODE_CLICK:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_0

    .line 2521
    :pswitch_a
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->prepareRawImageViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oneplus/camera/ui/SecondLayerBar;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 2449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 2483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private onManualSecondLayerItemClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2610
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v1, :cond_0

    .line 2612
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2613
    .local v0, "settingsId":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->changeCustomSettings(I)V

    .line 2618
    .end local v0    # "settingsId":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2608
    return-void

    .line 2616
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onManualSecondLayerItemClicked() - There is no manual mode UI."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPostInitialize()V
    .locals 4

    .prologue
    .line 2626
    const-class v1, Lcom/oneplus/camera/manual/ManualModeUI;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$60;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$60;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 2671
    new-instance v1, Lcom/oneplus/camera/ui/CaptureBar$61;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CaptureBar$61;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    .line 2692
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 2693
    .local v0, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v1, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    .line 2696
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    sget-object v2, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2697
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateRawButton()V

    .line 2623
    :cond_0
    return-void
.end method

.method private onPostViewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2705
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 2706
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_InternalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eq v0, v1, :cond_1

    .line 2707
    :cond_0
    return-void

    .line 2708
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PostViewReceived:Z

    .line 2709
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 2703
    return-void
.end method

.method private onPreviewCoverStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 2
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 2716
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2736
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeResolution(Lcom/oneplus/camera/media/Resolution;)Z

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2740
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->changeResolution(Lcom/oneplus/camera/media/Resolution;)Z

    .line 2741
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->checkCameraPrevewRestartNeeded()V

    .line 2745
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateResolutionButton()V

    .line 2714
    :goto_0
    :pswitch_0
    return-void

    .line 2721
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButtonVisibility()V

    .line 2722
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateManualModeSavingButton()V

    .line 2723
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSelfTimerButton()V

    goto :goto_0

    .line 2730
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateManualModeSavingButton()V

    goto :goto_0

    .line 2716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onPrimaryButtonPressed(Z)V
    .locals 4
    .param p1, "isHwButton"    # Z

    .prologue
    .line 2757
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-eqz v1, :cond_0

    .line 2758
    return-void

    .line 2759
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 2760
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    .line 2762
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrimaryButtonPressed()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;-><init>(Lcom/oneplus/camera/ui/CaptureButtons$Button;)V

    .line 2766
    .local v0, "e":Lcom/oneplus/camera/ui/CaptureButtonEventArgs;
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/CaptureBar;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2767
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2769
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrimaryButtonPressed() - Handled by others"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    return-void

    .line 2774
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    .line 2777
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2779
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrimaryButtonPressed() - Capture UI is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    .line 2781
    return-void

    .line 2783
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2754
    :goto_0
    return-void

    .line 2786
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2787
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrimaryButtonPressed() - Self timer is started"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2804
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2805
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrimaryButtonPressed() - Burst capture is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2807
    :cond_4
    const/16 v1, 0x2710

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 2783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onPrimaryButtonReleased()V
    .locals 1

    .prologue
    .line 2817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased(Z)V

    .line 2815
    return-void
.end method

.method private onPrimaryButtonReleased(Z)V
    .locals 8
    .param p1, "capture"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 2824
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-nez v2, :cond_0

    .line 2825
    return-void

    .line 2826
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 2827
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    .line 2828
    .local v1, "isHwButton":Z
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    .line 2830
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPrimaryButtonReleased() capture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const/16 v2, 0x2710

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2836
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, v2}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;-><init>(Lcom/oneplus/camera/ui/CaptureButtons$Button;)V

    .line 2837
    .local v0, "e":Lcom/oneplus/camera/ui/CaptureButtonEventArgs;
    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/ui/CaptureBar;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2838
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2840
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Handled by others"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 2842
    return-void

    .line 2846
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2848
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Capture UI is disabled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    .line 2850
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTimeParam:Z

    .line 2851
    return-void

    .line 2853
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2854
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 2855
    return-void

    .line 2859
    :cond_3
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 2821
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 2864
    :pswitch_1
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    if-eqz v2, :cond_6

    .line 2866
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPrimaryButtonReleased() - Stop burst shots"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    .line 2868
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureHandle;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 2869
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotoReceived:Z

    if-nez v2, :cond_4

    .line 2871
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    if-eqz v1, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v7, v2}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 2872
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2874
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Fail to take single shot"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    :cond_5
    move v2, v4

    .line 2871
    goto :goto_1

    .line 2879
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2881
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Stop self timer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureHandle;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto :goto_0

    .line 2886
    :cond_7
    if-eqz p1, :cond_4

    .line 2888
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2890
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 2891
    return-void

    .line 2893
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    if-eqz v1, :cond_9

    :goto_2
    invoke-virtual {v2, v7, v3}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 2894
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2896
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Fail to capture photo"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 2893
    goto :goto_2

    .line 2904
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2905
    return-void

    .line 2906
    :cond_a
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 2917
    :pswitch_4
    if-eqz p1, :cond_4

    .line 2919
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureHandle;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto/16 :goto_0

    .line 2909
    :pswitch_5
    if-eqz p1, :cond_4

    .line 2911
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    if-eqz v1, :cond_b

    :goto_3
    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->captureVideo(I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 2912
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2913
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPrimaryButtonReleased() - Fail to capture video"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 2911
    goto :goto_3

    .line 2859
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 2906
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private onRawSecondLayerItemClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2936
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2937
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 2939
    :cond_0
    return-void

    .line 2943
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2944
    .local v0, "rawValue":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "RawCapture"

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2945
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2933
    return-void
.end method

.method private onResolutionSecondLayerItemClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 2952
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2953
    return-void

    .line 2955
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v2, :cond_1

    .line 2956
    return-void

    .line 2958
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2960
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

    .line 2962
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 2964
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_5

    .line 2966
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_2

    .line 2967
    return-void

    .line 2969
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2970
    return-void

    .line 2973
    :cond_3
    const-string/jumbo v2, "PhotoResolutionChange"

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 2976
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_4

    .line 2978
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2979
    .local v1, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2980
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2950
    .end local v1    # "oldHandle":Lcom/oneplus/base/Handle;
    :cond_4
    :goto_0
    return-void

    .line 2985
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_6

    .line 2986
    return-void

    .line 2988
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelectedResolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2989
    return-void

    .line 2992
    :cond_7
    const-string/jumbo v2, "PhotoResolutionChange"

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 2995
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_4

    .line 2997
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2998
    .restart local v1    # "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoPreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2999
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 3008
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSceneAdded() - Scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    sget-object v1, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3012
    .local v0, "sceneId":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    return-void
.end method

.method private onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 3019
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSceneRemoved() - Scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    sget-object v1, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3023
    .local v0, "sceneId":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3017
    return-void
.end method

.method private onSecondaryButtonClicked()V
    .locals 2

    .prologue
    .line 3031
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3032
    return-void

    .line 3033
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3029
    :cond_1
    :goto_0
    return-void

    .line 3036
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_2

    .line 3037
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSecondaryButtonClicked() - Take video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 3039
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3040
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSecondaryButtonClicked() - Fail to capture photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onSmileCaptureSecondLayerItemClicked(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3050
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3051
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v3, v4, :cond_1

    .line 3053
    :cond_0
    return-void

    .line 3057
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3058
    .local v0, "smileWaitingDuration":J
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    sget-object v5, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/oneplus/camera/SmileCaptureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3060
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_3

    .line 3061
    const-string/jumbo v2, "SmileCapture.Timer.Front"

    .line 3064
    .local v2, "timerKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3065
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSmileCaptureButton()V

    .line 3066
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3047
    return-void

    .line 3058
    .end local v2    # "timerKey":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3063
    :cond_3
    const-string/jumbo v2, "SmileCapture.Timer.Back"

    .restart local v2    # "timerKey":Ljava/lang/String;
    goto :goto_1
.end method

.method private prepareCountDownImageViewList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3098
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3099
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3102
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const-wide/16 v4, 0x0

    .line 3103
    .local v4, "timer":J
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    if-eqz v7, :cond_0

    .line 3104
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "SelfTimer.Back"

    invoke-virtual {v7, v8}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3108
    :goto_0
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3109
    .local v6, "view":Landroid/widget/ImageView;
    new-instance v7, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v8, 0x7f020132

    invoke-direct {v7, v0, v8}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3110
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3111
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 3112
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3115
    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3117
    new-instance v6, Landroid/widget/ImageView;

    .end local v6    # "view":Landroid/widget/ImageView;
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3118
    .restart local v6    # "view":Landroid/widget/ImageView;
    new-instance v7, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v8, 0x7f02024b

    invoke-direct {v7, v0, v8}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3119
    const-wide/16 v8, 0x3

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 3120
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3123
    :goto_2
    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3124
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3126
    new-instance v6, Landroid/widget/ImageView;

    .end local v6    # "view":Landroid/widget/ImageView;
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3127
    .restart local v6    # "view":Landroid/widget/ImageView;
    new-instance v7, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v8, 0x7f02024c

    invoke-direct {v7, v0, v8}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3128
    const-wide/16 v8, 0x5

    cmp-long v7, v4, v8

    if-nez v7, :cond_3

    .line 3129
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3132
    :goto_3
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3133
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3135
    new-instance v6, Landroid/widget/ImageView;

    .end local v6    # "view":Landroid/widget/ImageView;
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3136
    .restart local v6    # "view":Landroid/widget/ImageView;
    new-instance v7, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v8, 0x7f02024a

    invoke-direct {v7, v0, v8}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3137
    const-wide/16 v8, 0xa

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    .line 3138
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3141
    :goto_4
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3142
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3145
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3147
    .local v1, "item":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CountdownOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3148
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_5

    .line 3106
    .end local v1    # "item":Landroid/widget/ImageView;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    .end local v6    # "view":Landroid/widget/ImageView;
    :cond_0
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_0

    .line 3114
    .restart local v6    # "view":Landroid/widget/ImageView;
    :cond_1
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 3122
    :cond_2
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 3131
    :cond_3
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 3140
    :cond_4
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 3151
    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_5
    return-object v3
.end method

.method private prepareFaceBeautyImageViewList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 3158
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3159
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3161
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v3, :cond_0

    .line 3162
    return-object v2

    .line 3163
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v4, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3166
    .local v1, "isActivated":Z
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 3168
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    .line 3169
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    const v4, 0x7f02011a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3170
    if-eqz v1, :cond_3

    .line 3171
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3174
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3176
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3177
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 3179
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 3184
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    .line 3185
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    const v4, 0x7f02011b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3186
    if-nez v1, :cond_4

    .line 3187
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3190
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3192
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3193
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 3195
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3197
    return-object v2

    .line 3173
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 3189
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private prepareFlashImageViewList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    const v13, 0x7f02006d

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    .line 3205
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3206
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    .line 3208
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-nez v1, :cond_0

    .line 3209
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v9

    .line 3212
    :cond_0
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v12, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v12}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3213
    .local v7, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v12, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v12}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashMode;

    .line 3216
    .local v2, "currentFlashMode":Lcom/oneplus/camera/FlashMode;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3217
    .local v8, "view":Landroid/widget/ImageView;
    new-instance v9, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v12, 0x7f02006c

    invoke-direct {v9, v0, v12}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3218
    sget-object v9, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-ne v2, v9, :cond_5

    move v9, v10

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3219
    sget-object v9, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3220
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3223
    sget-object v9, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3225
    new-instance v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/widget/ImageView;
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3226
    .restart local v8    # "view":Landroid/widget/ImageView;
    new-instance v9, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v12, 0x7f020069

    invoke-direct {v9, v0, v12}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3227
    sget-object v9, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    if-ne v2, v9, :cond_6

    move v9, v10

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3228
    sget-object v9, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3229
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3233
    :cond_1
    sget-object v9, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3235
    new-instance v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/widget/ImageView;
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3236
    .restart local v8    # "view":Landroid/widget/ImageView;
    new-instance v9, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-direct {v9, v0, v13}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3237
    sget-object v9, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v2, v9, :cond_7

    move v9, v10

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3238
    sget-object v9, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3239
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    :cond_2
    sget-object v9, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3245
    new-instance v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/widget/ImageView;
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3246
    .restart local v8    # "view":Landroid/widget/ImageView;
    new-instance v9, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-direct {v9, v0, v13}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3247
    sget-object v9, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    if-ne v2, v9, :cond_8

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3248
    sget-object v9, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3249
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    :cond_3
    const/4 v6, 0x1

    .line 3254
    .local v6, "needClickSound":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v9, v10, :cond_4

    .line 3255
    const/4 v6, 0x0

    .line 3256
    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3258
    .local v3, "item":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3259
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 3260
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_4

    .end local v3    # "item":Landroid/widget/ImageView;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v6    # "needClickSound":Z
    :cond_5
    move v9, v11

    .line 3218
    goto/16 :goto_0

    :cond_6
    move v9, v11

    .line 3227
    goto/16 :goto_1

    :cond_7
    move v9, v11

    .line 3237
    goto :goto_2

    :cond_8
    move v10, v11

    .line 3247
    goto :goto_3

    .line 3264
    .restart local v4    # "item$iterator":Ljava/util/Iterator;
    .restart local v6    # "needClickSound":Z
    :cond_9
    return-object v5
.end method

.method private prepareHdrHqImageViewList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3271
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3272
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3273
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v10, 0x0

    .line 3275
    .local v10, "view":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v12, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v11, v12}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 3278
    .local v1, "currentScene":Lcom/oneplus/camera/scene/Scene;
    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_Scenes:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v10    # "view":Landroid/widget/ImageView;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3280
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3281
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/scene/Scene;

    .line 3282
    .local v8, "scene":Lcom/oneplus/camera/scene/Scene;
    const/4 v9, 0x0

    .line 3283
    .local v9, "sceneDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v11, Lcom/oneplus/camera/scene/Scene$ImageUsage;->SECOND_LAYER_BAR_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-interface {v8, v11}, Lcom/oneplus/camera/scene/Scene;->getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3284
    .local v9, "sceneDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_0

    .line 3286
    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "prepareHdrHqImageViewList() - scene : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " no scene image available."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3290
    :cond_0
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3291
    .local v10, "view":Landroid/widget/ImageView;
    new-instance v11, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-direct {v11, v0, v9}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3292
    if-ne v1, v8, :cond_1

    .line 3293
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3296
    :goto_1
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3297
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3295
    :cond_1
    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 3300
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/camera/scene/Scene;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "scene":Lcom/oneplus/camera/scene/Scene;
    .end local v9    # "sceneDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "view":Landroid/widget/ImageView;
    :cond_2
    sget-object v11, Lcom/oneplus/camera/ui/CaptureBar;->SCENE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3303
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3305
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3306
    .restart local v10    # "view":Landroid/widget/ImageView;
    new-instance v11, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v12, 0x7f02011f

    invoke-direct {v11, v0, v12}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3307
    sget-object v11, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne v1, v11, :cond_4

    .line 3308
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3311
    :goto_2
    sget-object v11, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3312
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3315
    .end local v10    # "view":Landroid/widget/ImageView;
    :cond_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "item$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 3317
    .local v4, "item":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3318
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_3

    .line 3310
    .end local v4    # "item":Landroid/widget/ImageView;
    .end local v5    # "item$iterator":Ljava/util/Iterator;
    .restart local v10    # "view":Landroid/widget/ImageView;
    :cond_4
    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 3321
    .end local v10    # "view":Landroid/widget/ImageView;
    .restart local v5    # "item$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "prepareHdrHqImageViewList()"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    return-object v7
.end method

.method private prepareManualModeCustomImageViewList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 3330
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3331
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3333
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v1, 0x0

    .line 3334
    .local v1, "customSettingsIndex":I
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v6, :cond_0

    .line 3336
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v7, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3339
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3340
    .local v5, "view":Landroid/widget/ImageView;
    new-instance v6, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v7, 0x7f0200df

    invoke-direct {v6, v0, v7}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3341
    if-nez v1, :cond_1

    .line 3342
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3345
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3346
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3348
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3349
    .restart local v5    # "view":Landroid/widget/ImageView;
    new-instance v6, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v7, 0x7f0200dd

    invoke-direct {v6, v0, v7}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3350
    if-ne v1, v11, :cond_2

    .line 3351
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3354
    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3355
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3357
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3358
    .restart local v5    # "view":Landroid/widget/ImageView;
    new-instance v6, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v7, 0x7f0200de

    invoke-direct {v6, v0, v7}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3359
    if-ne v1, v12, :cond_3

    .line 3360
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3363
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3364
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3367
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3369
    .local v2, "item":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3370
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_3

    .line 3344
    .end local v2    # "item":Landroid/widget/ImageView;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 3353
    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 3362
    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 3373
    .restart local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v4
.end method

.method private prepareRawImageViewList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 3380
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3381
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3383
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v6

    const-string/jumbo v7, "RawCapture"

    invoke-virtual {v6, v7}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3385
    .local v1, "isRawCaptureEnable":Z
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3386
    .local v5, "view":Landroid/widget/ImageView;
    new-instance v6, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v7, 0x7f020130

    invoke-direct {v6, v0, v7}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3388
    if-eqz v1, :cond_0

    .line 3389
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3392
    :goto_0
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3393
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3396
    .restart local v5    # "view":Landroid/widget/ImageView;
    new-instance v6, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v7, 0x7f020131

    invoke-direct {v6, v0, v7}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3398
    if-nez v1, :cond_1

    .line 3399
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3402
    :goto_1
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3403
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3405
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3407
    .local v2, "item":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3408
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_2

    .line 3391
    .end local v2    # "item":Landroid/widget/ImageView;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 3401
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 3411
    .restart local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method private prepareResolutionImageViewList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3418
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3419
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3420
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v8, 0x0

    .line 3422
    .local v8, "view":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 3423
    .local v5, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    .line 3424
    .local v1, "currentResolution":Lcom/oneplus/camera/media/Resolution;
    :goto_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "view":Landroid/widget/ImageView;
    .local v7, "resolution$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/media/Resolution;

    .line 3426
    .local v6, "resolution":Lcom/oneplus/camera/media/Resolution;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3427
    .local v8, "view":Landroid/widget/ImageView;
    new-instance v9, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v10

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->getResolutionResId(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/MediaType;)I

    move-result v10

    invoke-direct {v9, v0, v10}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3428
    invoke-virtual {v6, v1}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3429
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3432
    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3433
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3422
    .end local v1    # "currentResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v5    # "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v7    # "resolution$iterator":Ljava/util/Iterator;
    .local v8, "view":Landroid/widget/ImageView;
    :cond_0
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .restart local v5    # "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    goto :goto_0

    .line 3423
    :cond_1
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    .restart local v1    # "currentResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_1

    .line 3431
    .restart local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v7    # "resolution$iterator":Ljava/util/Iterator;
    .local v8, "view":Landroid/widget/ImageView;
    :cond_2
    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 3437
    .end local v6    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v8    # "view":Landroid/widget/ImageView;
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3439
    .local v2, "item":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3440
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_4

    .line 3443
    .end local v2    # "item":Landroid/widget/ImageView;
    :cond_4
    return-object v4
.end method

.method private prepareSmileCaptureImageViewList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3450
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3451
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3454
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/Camera;

    sget-object v11, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v10, v11, :cond_0

    .line 3455
    const-string/jumbo v1, "SmileCapture.Front"

    .line 3458
    .local v1, "facingKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3461
    .local v2, "isEnabled":Z
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/Camera;

    sget-object v11, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v10, v11, :cond_1

    .line 3462
    const-string/jumbo v8, "SmileCapture.Timer.Front"

    .line 3465
    .local v8, "timerKey":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v10

    const-wide/16 v12, 0x2

    invoke-virtual {v10, v8, v12, v13}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3467
    .local v6, "smileWaitingDuration":J
    :goto_2
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3468
    .local v9, "view":Landroid/widget/ImageView;
    new-instance v10, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v11, 0x7f020135

    invoke-direct {v10, v0, v11}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3469
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_3

    .line 3470
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3473
    :goto_3
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3474
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3476
    new-instance v9, Landroid/widget/ImageView;

    .end local v9    # "view":Landroid/widget/ImageView;
    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3477
    .restart local v9    # "view":Landroid/widget/ImageView;
    new-instance v10, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v11, 0x7f020133

    invoke-direct {v10, v0, v11}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3478
    const-wide/16 v10, 0x2

    cmp-long v10, v6, v10

    if-nez v10, :cond_4

    .line 3479
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3482
    :goto_4
    const-wide/16 v10, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3483
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3485
    new-instance v9, Landroid/widget/ImageView;

    .end local v9    # "view":Landroid/widget/ImageView;
    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3486
    .restart local v9    # "view":Landroid/widget/ImageView;
    new-instance v10, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v11, 0x7f020134

    invoke-direct {v10, v0, v11}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3487
    const-wide/16 v10, 0x5

    cmp-long v10, v6, v10

    if-nez v10, :cond_5

    .line 3488
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3491
    :goto_5
    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3492
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3494
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3496
    .local v3, "item":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3497
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_6

    .line 3457
    .end local v1    # "facingKey":Ljava/lang/String;
    .end local v2    # "isEnabled":Z
    .end local v3    # "item":Landroid/widget/ImageView;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v6    # "smileWaitingDuration":J
    .end local v8    # "timerKey":Ljava/lang/String;
    .end local v9    # "view":Landroid/widget/ImageView;
    :cond_0
    const-string/jumbo v1, "SmileCapture.Back"

    .restart local v1    # "facingKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 3464
    .restart local v2    # "isEnabled":Z
    :cond_1
    const-string/jumbo v8, "SmileCapture.Timer.Back"

    .restart local v8    # "timerKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 3465
    :cond_2
    const-wide/16 v6, 0x0

    .restart local v6    # "smileWaitingDuration":J
    goto/16 :goto_2

    .line 3472
    .restart local v9    # "view":Landroid/widget/ImageView;
    :cond_3
    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    .line 3481
    :cond_4
    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 3490
    :cond_5
    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5

    .line 3500
    .restart local v4    # "item$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v5
.end method

.method private restoreButtonBackground(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3511
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 3512
    .local v0, "isLastHandle":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3513
    return-void

    .line 3516
    :cond_0
    if-eqz v0, :cond_1

    .line 3517
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 3505
    :cond_1
    return-void
.end method

.method private restoreButtonIcon(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 3525
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3528
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 3529
    .local v0, "isLastHandle":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3530
    return-void

    .line 3533
    :cond_0
    if-eqz v0, :cond_1

    .line 3534
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 3522
    :cond_1
    return-void
.end method

.method private restoreButtonStyle(Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    .param p2, "flags"    # I

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3545
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3546
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonStyle()V

    .line 3539
    return-void
.end method

.method private restoreButtonVisibility(Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    .param p2, "flags"    # I

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3554
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 3555
    .local v0, "isLast":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3557
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities()V

    .line 3551
    return-void

    .line 3556
    :cond_0
    return-void
.end method

.method private restorePanelStyle(Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3565
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 3566
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3567
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updatePanelStyle()V

    .line 3562
    :cond_0
    return-void
.end method

.method private setFaceBeautyEnabled(Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
    .param p2, "enable"    # Z
    .param p3, "updateSeekBar"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3702
    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    if-ne p1, v3, :cond_3

    const/4 v0, 0x1

    .line 3703
    .local v0, "isSourceFromFaceBeauty":Z
    :goto_0
    if-eqz p2, :cond_5

    .line 3705
    if-eqz v0, :cond_0

    .line 3706
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->changeSceneByFaceBeauty(Z)V

    .line 3707
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-eqz v0, :cond_4

    :goto_1
    invoke-interface {v3, v1}, Lcom/oneplus/camera/FaceBeautyController;->activate(I)Z

    .line 3717
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautyButton()V

    .line 3720
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautySecondLayerButton()V

    .line 3723
    if-eqz p3, :cond_2

    .line 3724
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautySecondLayerSeekBar()V

    .line 3699
    :cond_2
    return-void

    .line 3702
    .end local v0    # "isSourceFromFaceBeauty":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isSourceFromFaceBeauty":Z
    goto :goto_0

    :cond_4
    move v1, v2

    .line 3707
    goto :goto_1

    .line 3711
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-eqz v0, :cond_6

    :goto_3
    invoke-interface {v3, v1}, Lcom/oneplus/camera/FaceBeautyController;->deactivate(I)V

    .line 3712
    if-eqz v0, :cond_1

    .line 3713
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->changeSceneByFaceBeauty(Z)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 3711
    goto :goto_3
.end method

.method private setupFaceBeautyUI()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3756
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    .line 3757
    return v6

    .line 3758
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v4, :cond_1

    .line 3759
    const/4 v4, 0x0

    return v4

    .line 3761
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupFaceBeautyUI()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v5, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3765
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v5, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3766
    .local v1, "isActivated":Z
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v5, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3768
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3771
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    .line 3772
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3773
    if-eqz v1, :cond_2

    .line 3774
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3775
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    const v5, 0x7f020068

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 3776
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;

    invoke-direct {v5, v0}, Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3777
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/oneplus/camera/ui/CaptureBar$64;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CaptureBar$64;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3821
    return v6
.end method

.method private showCaptureBarActionIconLayout(Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3830
    return-void

    .line 3832
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showCaptureBarActionIconLayout() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconHideHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3836
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 3826
    :cond_1
    return-void
.end method

.method private startBurstCapture()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3844
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3845
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    .line 3846
    .local v1, "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    .line 3847
    .local v2, "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3849
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startBurstCapture() - Burst capture is disabled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    return-void

    .line 3852
    :cond_0
    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_1

    .line 3854
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startBurstCapture() - Photo capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    return-void

    .line 3857
    :cond_1
    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_2

    .line 3859
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startBurstCapture() - Video capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    return-void

    .line 3863
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "startBurstCapture()"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    iget-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsHwPrimaryButtonPressed:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    :goto_0
    const/16 v6, 0x14

    invoke-virtual {v5, v6, v3}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 3867
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3869
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startBurstCapture() - Fail to capture photo"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    return-void

    :cond_3
    move v3, v4

    .line 3866
    goto :goto_0

    .line 3872
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    .line 3873
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotoReceived:Z

    .line 3841
    return-void
.end method

.method private startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 3880
    if-nez p1, :cond_0

    .line 3882
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startIconAnimation() - View is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    return-object v4

    .line 3886
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    .line 3887
    return-object v4

    .line 3889
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 3891
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3892
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3894
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 3895
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 3898
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    mul-int v1, v2, v3

    .line 3899
    .local v1, "durationMillies":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/ui/CaptureBar$65;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar$65;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 3910
    int-to-long v4, v1

    .line 3899
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3912
    return-object v0
.end method

.method private startModeChangeAnimation(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;)Z
    .locals 11
    .param p1, "oldMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "newMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    const v8, 0x7f020012

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3919
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v6, v7, :cond_0

    .line 3921
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startModeChangeAnimation() - Activity is not running."

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    return v9

    .line 3925
    :cond_0
    if-ne p1, p2, :cond_1

    .line 3926
    return v9

    .line 3929
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v6

    invoke-interface {p2}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 3930
    instance-of v6, p1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v6, :cond_7

    .line 3936
    :cond_2
    const/4 v2, 0x0

    .line 3937
    .local v2, "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .line 3938
    .local v3, "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3952
    .end local v2    # "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    :goto_0
    instance-of v6, p1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v6, :cond_9

    .line 3954
    if-eqz v2, :cond_8

    .line 3955
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f02001b

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3958
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    const v7, 0x7f0202d5

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .end local v3    # "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 3971
    :goto_2
    const/4 v4, 0x0

    .line 3972
    .local v4, "startEnterAnimation":Z
    const/4 v5, 0x0

    .line 3973
    .local v5, "startLeaveAnimation":Z
    if-eqz v2, :cond_c

    .line 3974
    const/4 v4, 0x1

    .line 3978
    :cond_4
    :goto_3
    if-eqz v4, :cond_d

    .line 3981
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3982
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 3983
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 3994
    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    .line 3995
    .local v0, "duration":J
    if-eqz v2, :cond_e

    .line 3996
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v0, v6

    .line 4000
    :cond_6
    :goto_5
    iget-boolean v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCaptureModeAnimationStarted:Z

    if-nez v6, :cond_f

    .line 4001
    iput-boolean v10, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCaptureModeAnimationStarted:Z

    .line 4004
    :goto_6
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResetPrimaryCameraButtonIconRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v6, v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 4006
    iget-boolean v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCaptureModeAnimationStarted:Z

    return v6

    .line 3931
    .end local v0    # "duration":J
    .end local v4    # "startEnterAnimation":Z
    .end local v5    # "startLeaveAnimation":Z
    :cond_7
    instance-of v6, p2, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v6, :cond_2

    .line 3933
    return v9

    .line 3941
    .restart local v2    # "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v3    # "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_0
    instance-of v6, p2, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v6, :cond_3

    .line 3942
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    const v7, 0x7f0202d4

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .end local v2    # "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .local v2, "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0

    .line 3945
    .local v2, "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    const v7, 0x7f0202ed

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .end local v2    # "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .local v2, "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0

    .line 3957
    .end local v2    # "newModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_8
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3960
    :cond_9
    invoke-interface {p1}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v6, v7, :cond_b

    .line 3962
    if-eqz v2, :cond_a

    .line 3963
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f020319

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3966
    :goto_7
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    const v7, 0x7f0202ee

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .end local v3    # "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .local v3, "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    goto/16 :goto_2

    .line 3965
    .local v3, "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_a
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 3969
    :cond_b
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3975
    .end local v3    # "oldModeDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v4    # "startEnterAnimation":Z
    .restart local v5    # "startLeaveAnimation":Z
    :cond_c
    if-eqz v3, :cond_4

    .line 3976
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 3985
    :cond_d
    if-eqz v5, :cond_5

    .line 3988
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3989
    invoke-virtual {v3, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 3990
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 3997
    .restart local v0    # "duration":J
    :cond_e
    if-eqz v3, :cond_6

    .line 3998
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v0, v6

    goto/16 :goto_5

    .line 4003
    :cond_f
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResetPrimaryCameraButtonIconRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v6}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 3938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private swtichCaptureMode(Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    .prologue
    .line 4013
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v3, :cond_0

    .line 4015
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "swtichCaptureMode() - There is no capture manager."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4016
    return-void

    .line 4019
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-nez v3, :cond_1

    .line 4021
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "swtichCaptureMode() - There is no capture switcher."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    return-void

    .line 4025
    :cond_1
    const/4 v2, 0x0

    .line 4026
    .local v2, "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "modeInList$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4028
    .local v0, "modeInList":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;->PHOTO:Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    if-ne p1, v3, :cond_4

    instance-of v3, v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-eqz v3, :cond_4

    .line 4030
    move-object v2, v0

    .line 4045
    .end local v0    # "modeInList":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v2    # "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    .line 4046
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 4011
    :goto_1
    return-void

    .line 4033
    .restart local v0    # "modeInList":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v2    # "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;->VIDEO:Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    if-ne p1, v3, :cond_5

    instance-of v3, v0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    if-eqz v3, :cond_5

    .line 4035
    move-object v2, v0

    .line 4036
    .local v2, "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    goto :goto_0

    .line 4038
    .local v2, "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_5
    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;->PORTRAIT:Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    if-ne p1, v3, :cond_2

    instance-of v3, v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v3, :cond_2

    .line 4040
    move-object v2, v0

    .line 4041
    .local v2, "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    goto :goto_0

    .line 4048
    .end local v0    # "modeInList":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v2    # "targetMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "swtichCaptureMode() - Cannot find target capture mode."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateButtonFunctions(Z)V
    .locals 2
    .param p1, "updateBackground"    # Z

    .prologue
    .line 4057
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4068
    :goto_0
    if-eqz p1, :cond_0

    .line 4069
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 4054
    :cond_0
    return-void

    .line 4060
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 4061
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    goto :goto_0

    .line 4064
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 4065
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    goto :goto_0

    .line 4057
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateButtonImages()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4078
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 4081
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4083
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4114
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4116
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$CaptureButtonFunctionSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 4075
    :cond_1
    :goto_1
    return-void

    .line 4086
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCapturingBokeh()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PostViewReceived:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isBokehMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4088
    :cond_2
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsBokehCapturingIconShown:Z

    .line 4089
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 4091
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsBokehCapturingIconShown:Z

    if-nez v1, :cond_0

    .line 4093
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4094
    .local v0, "bokehDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsBokehCapturingIconShown:Z

    .line 4095
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4096
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 4100
    .end local v0    # "bokehDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_2
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsBokehCapturingIconShown:Z

    .line 4101
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 4109
    :cond_4
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsBokehCapturingIconShown:Z

    .line 4110
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    iget-object v1, v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4119
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4121
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_5

    .line 4122
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020262

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

    .line 4124
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4126
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSelfTimerAnimationStarted:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v1, v2, :cond_1

    .line 4128
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSelfTimerAnimationStarted:Z

    .line 4129
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 4130
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStarting:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_1

    .line 4135
    :cond_6
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSelfTimerAnimationStarted:Z

    if-eqz v1, :cond_8

    .line 4137
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_7

    .line 4138
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020263

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

    .line 4139
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4141
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSelfTimerAnimationStarted:Z

    .line 4142
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v1, v2, :cond_1

    .line 4144
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 4145
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerAnimationDrawableStopping:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_1

    .line 4149
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 4154
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-nez v1, :cond_9

    .line 4155
    new-instance v1, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .line 4157
    :cond_9
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    .line 4166
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v1}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->resetState()V

    .line 4169
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 4174
    :cond_a
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    iget-object v1, v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 4083
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 4116
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4157
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private updateButtonStyle()V
    .locals 5

    .prologue
    .line 4183
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 4186
    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 4187
    .local v2, "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4188
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;

    iget-object v2, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 4191
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    if-ne v3, v2, :cond_1

    .line 4192
    return-void

    .line 4195
    :cond_1
    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 4196
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 4197
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4198
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonStyleSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4207
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 4180
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    :cond_2
    return-void

    .line 4201
    .restart local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    :pswitch_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 4204
    :pswitch_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 4198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateButtonVisibilities()V
    .locals 1

    .prologue
    .line 4215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities(I)V

    .line 4213
    return-void
.end method

.method private updateButtonVisibilities(I)V
    .locals 14
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v4, 0x258

    const-wide/16 v12, 0x12c

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 4220
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 4221
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v11, 0x1

    .line 4222
    .local v11, "animation":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4224
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_2

    .line 4225
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_1

    :goto_1
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 4235
    :goto_2
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4249
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 4254
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButtonVisibility()V

    .line 4217
    return-void

    .line 4221
    .end local v11    # "animation":Z
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "animation":Z
    goto :goto_0

    :cond_1
    move-wide v4, v8

    .line 4225
    goto :goto_1

    .line 4227
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_3

    move-wide v8, v12

    :cond_3
    sget-object v10, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 4229
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    if-eqz v1, :cond_6

    .line 4230
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_5

    :goto_4
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_5
    move-wide v4, v8

    goto :goto_4

    .line 4232
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_7

    move-wide v8, v12

    :cond_7
    sget-object v10, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 4241
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    if-ne v1, v2, :cond_8

    .line 4242
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_3

    .line 4245
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_3

    .line 4235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCaptureBarVisibility()V
    .locals 1

    .prologue
    .line 4261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->updateCaptureBarVisibility(I)V

    .line 4259
    return-void
.end method

.method private updateCaptureBarVisibility(I)V
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 4265
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 4266
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    const/4 v7, 0x1

    .line 4267
    .local v7, "animation":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    sget-object v2, Lcom/oneplus/camera/ui/ReviewScreen;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/ReviewScreen;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 4268
    :goto_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_0

    .line 4269
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_4

    .line 4271
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-eqz v7, :cond_1

    const-wide/16 v4, 0x12c

    :cond_1
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 4263
    :goto_2
    return-void

    .line 4266
    .end local v7    # "animation":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "animation":Z
    goto :goto_0

    .line 4267
    :cond_3
    const/4 v8, 0x0

    .local v8, "isReviewScreenShown":Z
    goto :goto_1

    .line 4268
    .end local v8    # "isReviewScreenShown":Z
    :cond_4
    if-nez v8, :cond_0

    .line 4273
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-eqz v7, :cond_5

    const-wide/16 v4, 0x258

    :cond_5
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2
.end method

.method private updateFaceBeautyButton()V
    .locals 4

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v0, :cond_0

    .line 4327
    return-void

    .line 4328
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v0, :cond_1

    .line 4329
    return-void

    .line 4332
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v1, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4335
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4338
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v1, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4339
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f02011b

    invoke-direct {v1, v2, v3}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4347
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4323
    return-void

    .line 4341
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-direct {v1, v2, v3}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4344
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFaceBeautySecondLayerButton()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 4281
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 4282
    :cond_0
    return-void

    .line 4283
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v1, :cond_2

    .line 4284
    return-void

    .line 4287
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v2, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4288
    .local v0, "isActivated":Z
    if-eqz v0, :cond_3

    .line 4290
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4291
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4278
    :goto_0
    return-void

    .line 4295
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonActive:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4296
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerButtonDeactive:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateFaceBeautySecondLayerSeekBar()V
    .locals 4

    .prologue
    .line 4305
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_0

    .line 4306
    return-void

    .line 4307
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v2, :cond_1

    .line 4308
    return-void

    .line 4311
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v3, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4313
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v3, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4314
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v3, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4315
    .local v0, "value":I
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4302
    .end local v0    # "value":I
    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 4318
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautySecondLayerSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private updateFlashButton()V
    .locals 13

    .prologue
    .line 4355
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v9, :cond_0

    .line 4357
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateFlashButton() - No flash button"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    return-void

    .line 4360
    :cond_0
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v9, :cond_1

    .line 4362
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateFlashButton() - No flash controller"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4364
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    .line 4365
    return-void

    .line 4367
    :cond_1
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v9, :cond_2

    .line 4369
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateFlashButton() - No exposure controller"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4371
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    .line 4372
    return-void

    .line 4376
    :cond_2
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v10, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    if-eq v9, v10, :cond_3

    .line 4378
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateFlashButton() - Flash disabled reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v12, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v11, v12}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", prev disable reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsFlashDisabledReasonChanged:Z

    .line 4380
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v10, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 4384
    :cond_3
    iget-boolean v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsFlashDisabledReasonChanged:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsReadyToCapture:Z

    if-eqz v9, :cond_4

    .line 4386
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashDisabledMessage()V

    .line 4387
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsFlashDisabledReasonChanged:Z

    .line 4391
    :cond_4
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v10, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4392
    .local v3, "isDisabled":Z
    const/4 v1, 0x1

    .line 4393
    .local v1, "isButtonVisible":Z
    if-eqz v3, :cond_5

    .line 4395
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledReason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v10}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 4404
    :cond_5
    :goto_0
    if-eqz v1, :cond_a

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v10, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4412
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4416
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 4417
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v10

    sget-object v9, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v9}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v9}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_1

    .line 4424
    const/4 v2, 0x1

    .line 4427
    .local v2, "isCapturing":Z
    :goto_1
    if-nez v2, :cond_6

    if-eqz v3, :cond_b

    .line 4428
    :cond_6
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 4433
    :goto_2
    const/4 v5, 0x0

    .line 4434
    .local v5, "resId":I
    if-nez v3, :cond_e

    .line 4436
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v10

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v11, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v11}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v9}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_2

    .line 4455
    :pswitch_0
    const v5, 0x7f02006c

    .line 4463
    :goto_3
    iget v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashButtonResId:I

    if-eq v9, v5, :cond_7

    .line 4465
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-direct {v10, v0, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4466
    iput v5, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashButtonResId:I

    .line 4470
    :cond_7
    packed-switch v5, :pswitch_data_3

    .line 4487
    :pswitch_1
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    .line 4492
    :cond_8
    :goto_4
    const/4 v4, 0x0

    .line 4493
    .local v4, "isUnselectable":Z
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-FlashController$FlashDisabledReasonSwitchesValues()[I

    move-result-object v10

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v11, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v11}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v9}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_4

    .line 4510
    :cond_9
    :goto_5
    :pswitch_2
    if-eqz v4, :cond_f

    .line 4511
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4352
    :goto_6
    return-void

    .line 4398
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    .end local v2    # "isCapturing":Z
    .end local v4    # "isUnselectable":Z
    .end local v5    # "resId":I
    :pswitch_3
    const/4 v1, 0x0

    .line 4399
    goto/16 :goto_0

    .line 4406
    :cond_a
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4407
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    .line 4408
    return-void

    .line 4421
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :pswitch_4
    const/4 v2, 0x0

    .line 4422
    .restart local v2    # "isCapturing":Z
    goto/16 :goto_1

    .line 4430
    :cond_b
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    goto :goto_2

    .line 4439
    .restart local v5    # "resId":I
    :pswitch_5
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v10, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-ne v9, v10, :cond_c

    .line 4440
    const v5, 0x7f02006a

    goto :goto_3

    .line 4442
    :cond_c
    const v5, 0x7f020069

    goto :goto_3

    .line 4446
    :pswitch_6
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v10, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v9, :cond_d

    .line 4448
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v10, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/oneplus/camera/FlashController;->setFlashMode(Lcom/oneplus/camera/FlashMode;I)V

    .line 4449
    const v5, 0x7f020069

    goto/16 :goto_3

    .line 4452
    :cond_d
    const v5, 0x7f02006d

    goto/16 :goto_3

    .line 4460
    :cond_e
    const v5, 0x7f02006c

    goto/16 :goto_3

    .line 4474
    :pswitch_7
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 4476
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->linkToOnScreenHint()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4478
    new-instance v8, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v9, 0x7f0202f0

    const v10, 0x7f0c003d

    invoke-direct {v8, v0, v9, v10}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;II)V

    .line 4479
    .local v8, "shadowdrawable":Lcom/oneplus/camera/drawable/ShadowDrawable;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 4480
    .local v7, "shadowRadius":I
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 4481
    .local v6, "shadowDy":I
    add-int v9, v7, v6

    invoke-virtual {v8, v7, v7, v7, v9}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setPaddings(IIII)V

    .line 4482
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/4 v10, 0x0

    const/16 v11, 0x11

    invoke-interface {v9, v8, v10, v11}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashOnToastHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_4

    .line 4499
    .end local v6    # "shadowDy":I
    .end local v7    # "shadowRadius":I
    .end local v8    # "shadowdrawable":Lcom/oneplus/camera/drawable/ShadowDrawable;
    .restart local v4    # "isUnselectable":Z
    :pswitch_8
    const/4 v4, 0x1

    .line 4500
    goto/16 :goto_5

    .line 4502
    :pswitch_9
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v10, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4503
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 4513
    :cond_f
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    .line 4395
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
    .end packed-switch

    .line 4417
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 4436
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 4470
    :pswitch_data_3
    .packed-switch 0x7f02006a
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 4493
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method private updateFlashButtonDelay()V
    .locals 1

    .prologue
    .line 4521
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsUpdateFlashButtonScheduled:Z

    if-eqz v0, :cond_0

    .line 4522
    return-void

    .line 4525
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsUpdateFlashButtonScheduled:Z

    .line 4528
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_UpdateFlashButtonRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 4518
    return-void
.end method

.method private updateFlashDisabledMessage()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 4536
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v0, :cond_1

    .line 4537
    :cond_0
    return-void

    .line 4540
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v1, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4542
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->hideFlashDisabledMessage()V

    .line 4543
    return-void

    .line 4547
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v1, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 4548
    .local v8, "reason":Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    sget-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    if-eq v8, v0, :cond_3

    sget-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->HIGH_DEVICE_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    if-eq v8, v0, :cond_3

    .line 4550
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->hideFlashDisabledMessage()V

    .line 4551
    return-void

    .line 4555
    :cond_3
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/CaptureBar;->getFlashDisabledMessageText(Lcom/oneplus/camera/FlashController$FlashDisabledReason;)I

    move-result v9

    .line 4556
    .local v9, "resId":I
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->linkToToastManager()Z

    move-result v0

    if-eqz v0, :cond_4

    if-lez v9, :cond_4

    .line 4558
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v6, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v0}, Lcom/oneplus/camera/scene/Scene;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4559
    .local v4, "toastString":Ljava/lang/String;
    const-wide/16 v6, 0x1f4

    const/16 v1, 0x272e

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 4533
    .end local v4    # "toastString":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private updateHdrHqButton()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    .line 4568
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v3, :cond_0

    .line 4569
    return-void

    .line 4570
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v3, :cond_1

    .line 4571
    return-void

    .line 4572
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 4573
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 4574
    return-void

    .line 4577
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4579
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4580
    return-void

    .line 4584
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4585
    .local v2, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v3, v2, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-nez v3, :cond_4

    .line 4587
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4588
    return-void

    .line 4592
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4595
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 4596
    .local v1, "currentScene":Lcom/oneplus/camera/scene/Scene;
    instance-of v3, v1, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v3, :cond_5

    .line 4597
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f020115

    invoke-direct {v4, v5, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4606
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4565
    return-void

    .line 4598
    :cond_5
    instance-of v3, v1, Lcom/oneplus/camera/scene/HdrScene;

    if-eqz v3, :cond_6

    .line 4599
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f02011e

    invoke-direct {v4, v5, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4600
    :cond_6
    instance-of v3, v1, Lcom/oneplus/camera/scene/ClearShot;

    if-eqz v3, :cond_7

    .line 4601
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f020117

    invoke-direct {v4, v5, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4603
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f02011f

    invoke-direct {v4, v5, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateManualModeCustomButton()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 4676
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v2, :cond_0

    .line 4677
    return-void

    .line 4679
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v2, :cond_1

    .line 4680
    return-void

    .line 4682
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4683
    .local v0, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v2, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v2, :cond_2

    .line 4685
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4686
    return-void

    .line 4689
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-nez v2, :cond_3

    .line 4691
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4692
    return-void

    .line 4695
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4697
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4699
    .local v1, "settingId":I
    if-nez v1, :cond_5

    .line 4700
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0200df

    invoke-direct {v3, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4707
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4674
    return-void

    .line 4701
    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 4702
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0200dd

    invoke-direct {v3, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4703
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 4704
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0200de

    invoke-direct {v3, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateManualModeSavingButton()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 4613
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateManualModeSavingButton() - check setting"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4615
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_0

    .line 4616
    return-void

    .line 4618
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-nez v1, :cond_1

    .line 4619
    return-void

    .line 4621
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_2

    .line 4622
    return-void

    .line 4624
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4625
    return-void

    .line 4627
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4628
    .local v10, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v1, v10, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4629
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4628
    if-eqz v1, :cond_7

    .line 4631
    :cond_4
    const/4 v0, 0x0

    .line 4632
    .local v0, "animation":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4633
    const/4 v0, 0x1

    .line 4635
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    const-wide/16 v4, 0x12c

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 4636
    return-void

    .line 4635
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 4639
    .end local v0    # "animation":Z
    :cond_7
    const/4 v7, 0x1

    .line 4642
    .local v7, "enableButton":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    instance-of v1, v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    if-eqz v1, :cond_8

    .line 4644
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "Manual.Saved"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4645
    .local v8, "fileExisted":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    check-cast v1, Lcom/oneplus/camera/manual/ManualCustomSettings;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->hasUnCommitedChanges()Z

    move-result v9

    .line 4646
    .local v9, "hasUncommitedChanges":Z
    if-eqz v8, :cond_9

    .line 4647
    move v7, v9

    .line 4655
    .end local v7    # "enableButton":Z
    .end local v8    # "fileExisted":Z
    .end local v9    # "hasUncommitedChanges":Z
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4657
    .local v11, "settingId":I
    if-nez v11, :cond_a

    .line 4659
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 4611
    :goto_2
    return-void

    .line 4648
    .end local v11    # "settingId":I
    .restart local v7    # "enableButton":Z
    .restart local v8    # "fileExisted":Z
    .restart local v9    # "hasUncommitedChanges":Z
    :cond_9
    if-nez v8, :cond_8

    .line 4649
    const/4 v7, 0x1

    goto :goto_1

    .line 4663
    .end local v7    # "enableButton":Z
    .end local v8    # "fileExisted":Z
    .end local v9    # "hasUncommitedChanges":Z
    .restart local v11    # "settingId":I
    :cond_a
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 4664
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 4665
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4666
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 4667
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v3, 0x7f0200e1

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 4668
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v3, 0x7f0200e0

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3
.end method

.method private updateModeIndicator(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V
    .locals 12
    .param p1, "oldMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "newMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p3, "animate"    # Z

    .prologue
    .line 4723
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v8}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 4730
    const/4 v5, 0x1

    .line 4733
    .local v5, "isVideoCapturing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v8, v9, :cond_0

    if-eqz v5, :cond_0

    .line 4735
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4736
    return-void

    .line 4727
    .end local v5    # "isVideoCapturing":Z
    :pswitch_0
    const/4 v5, 0x0

    .line 4728
    .restart local v5    # "isVideoCapturing":Z
    goto :goto_0

    .line 4740
    :cond_0
    const/4 v2, 0x0

    .line 4741
    .local v2, "hasBokehMode":Z
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v8, :cond_1

    .line 4743
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    .line 4744
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v1, :cond_1

    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v8, v9, :cond_1

    .line 4745
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const-class v9, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    .line 4748
    .end local v1    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    :goto_1
    invoke-direct {p0, p2}, Lcom/oneplus/camera/ui/CaptureBar;->isModeIndicatorNeeded(Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 4751
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090087

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4754
    .local v3, "indicatorContainerSize":I
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4757
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->isVideoServiceMode()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x8

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4758
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->isPhotoServiceMode()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4759
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 4760
    .local v4, "isAnimationCancelled":Z
    :goto_4
    if-eqz v4, :cond_2

    .line 4762
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4763
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 4765
    :cond_2
    if-eqz p3, :cond_b

    .line 4767
    if-eqz v2, :cond_a

    .line 4769
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_4

    .line 4771
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/oneplus/widget/ViewUtils;->setWidth(Landroid/view/View;I)V

    .line 4772
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4773
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4774
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 4775
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4776
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ShowBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4777
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/oneplus/camera/ui/CaptureBar$66;

    invoke-direct {v9, p0, v3}, Lcom/oneplus/camera/ui/CaptureBar$66;-><init>(Lcom/oneplus/camera/ui/CaptureBar;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4787
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 4818
    :cond_4
    :goto_5
    const/4 v6, 0x0

    .line 4819
    .local v6, "photoRunnable":Ljava/lang/Runnable;
    const/4 v7, 0x0

    .line 4820
    .local v7, "videoRunnable":Ljava/lang/Runnable;
    const/4 v0, 0x0

    .line 4822
    .local v0, "bokehRunnable":Ljava/lang/Runnable;
    instance-of v8, p2, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-eqz v8, :cond_e

    .line 4824
    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    .line 4826
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200e2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4827
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200ee

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v6

    .line 4841
    .end local v6    # "photoRunnable":Ljava/lang/Runnable;
    :goto_6
    instance-of v8, p2, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    if-eqz v8, :cond_11

    .line 4843
    if-eqz p1, :cond_10

    if-eqz p3, :cond_10

    .line 4845
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020107

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4846
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020104

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v7

    .line 4860
    .end local v7    # "videoRunnable":Ljava/lang/Runnable;
    :goto_7
    instance-of v8, p2, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v8, :cond_14

    .line 4862
    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    .line 4864
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020105

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4865
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200f9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v0

    .line 4880
    .end local v0    # "bokehRunnable":Ljava/lang/Runnable;
    :goto_8
    if-eqz p3, :cond_5

    .line 4882
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v6}, Lcom/oneplus/camera/ui/CaptureBar;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 4883
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/camera/ui/CaptureBar;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 4884
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v0}, Lcom/oneplus/camera/ui/CaptureBar;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 4720
    .end local v3    # "indicatorContainerSize":I
    .end local v4    # "isAnimationCancelled":Z
    :cond_5
    :goto_9
    return-void

    .line 4745
    .restart local v1    # "camera":Lcom/oneplus/camera/Camera;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4757
    .end local v1    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v3    # "indicatorContainerSize":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 4758
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 4759
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 4790
    .restart local v4    # "isAnimationCancelled":Z
    :cond_a
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 4792
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 4793
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4794
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HideBokehModeIndicatorAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4795
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/oneplus/camera/ui/CaptureBar$67;

    invoke-direct {v9, p0, v3}, Lcom/oneplus/camera/ui/CaptureBar$67;-><init>(Lcom/oneplus/camera/ui/CaptureBar;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4805
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_5

    .line 4808
    :cond_b
    if-eqz v2, :cond_c

    .line 4810
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-static {v8, v3}, Lcom/oneplus/widget/ViewUtils;->setWidth(Landroid/view/View;I)V

    .line 4811
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4812
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 4815
    :cond_c
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 4830
    .restart local v0    # "bokehRunnable":Ljava/lang/Runnable;
    .restart local v6    # "photoRunnable":Ljava/lang/Runnable;
    .restart local v7    # "videoRunnable":Ljava/lang/Runnable;
    :cond_d
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200ee

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 4832
    :cond_e
    instance-of v8, p1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-eqz v8, :cond_f

    if-eqz p3, :cond_f

    .line 4834
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200e3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4835
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200e4

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v6

    .local v6, "photoRunnable":Ljava/lang/Runnable;
    goto/16 :goto_6

    .line 4838
    .local v6, "photoRunnable":Ljava/lang/Runnable;
    :cond_f
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200e4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 4849
    .end local v6    # "photoRunnable":Ljava/lang/Runnable;
    :cond_10
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020104

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 4851
    :cond_11
    instance-of v8, p1, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    if-eqz v8, :cond_12

    if-eqz p3, :cond_12

    .line 4853
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020108

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4854
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200fa

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v7

    .local v7, "videoRunnable":Ljava/lang/Runnable;
    goto/16 :goto_7

    .line 4857
    .local v7, "videoRunnable":Ljava/lang/Runnable;
    :cond_12
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200fa

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 4868
    .end local v7    # "videoRunnable":Ljava/lang/Runnable;
    :cond_13
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200f9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 4870
    :cond_14
    instance-of v8, p1, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v8, :cond_15

    if-eqz p3, :cond_15

    .line 4872
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f020106

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4873
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200ef

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v0

    .local v0, "bokehRunnable":Ljava/lang/Runnable;
    goto/16 :goto_8

    .line 4876
    .local v0, "bokehRunnable":Ljava/lang/Runnable;
    :cond_15
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    const v9, 0x7f0200ef

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 4888
    .end local v0    # "bokehRunnable":Ljava/lang/Runnable;
    .end local v3    # "indicatorContainerSize":I
    .end local v4    # "isAnimationCancelled":Z
    :cond_16
    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 4723
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateModeIndicator(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4714
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v0, :cond_0

    .line 4715
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0, v2, v0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->updateModeIndicator(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V

    .line 4712
    :cond_0
    return-void
.end method

.method private updatePanelStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4897
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 4898
    return-void

    .line 4902
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4903
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    iget-object v0, v1, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .line 4910
    .local v0, "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureControlPanel$StyleSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4917
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4918
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_EmptyTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4894
    :goto_1
    return-void

    .line 4904
    .end local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4905
    sget-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .restart local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    goto :goto_0

    .line 4907
    .end local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    :cond_2
    sget-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .restart local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    goto :goto_0

    .line 4913
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4914
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 4910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRawButton()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4927
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v2, :cond_0

    .line 4928
    return-void

    .line 4930
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v2, :cond_1

    .line 4931
    return-void

    .line 4933
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4934
    .local v1, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v2, v1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v2, :cond_2

    .line 4936
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4937
    return-void

    .line 4939
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4940
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    if-eqz v2, :cond_3

    .line 4942
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "RawCapture"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4943
    .local v0, "isRawEnabled":Z
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 4944
    new-instance v2, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f020131

    invoke-direct {v2, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    .line 4943
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4947
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v2, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4925
    .end local v0    # "isRawEnabled":Z
    :cond_3
    return-void

    .line 4945
    .restart local v0    # "isRawEnabled":Z
    :cond_4
    new-instance v2, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f020130

    invoke-direct {v2, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateResolutionButton()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 4955
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v3, :cond_0

    .line 4956
    return-void

    .line 4958
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v3, :cond_1

    .line 4959
    return-void

    .line 4961
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 4962
    .local v0, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v3, v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v3, :cond_3

    .line 4964
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4965
    return-void

    .line 4968
    :cond_3
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 4974
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4975
    return-void

    .line 4979
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 4980
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4984
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4986
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 4987
    .local v2, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_6

    .line 4989
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4990
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4998
    :goto_2
    const/4 v1, 0x0

    .line 4999
    .local v1, "resId":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_7

    .line 5000
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/CaptureBar;->getResolutionResId(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/MediaType;)I

    move-result v1

    .line 5003
    :goto_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4953
    return-void

    .line 4982
    .end local v1    # "resId":I
    .end local v2    # "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 4986
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    goto :goto_1

    .line 4994
    .restart local v2    # "resList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4995
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v3, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 5002
    .restart local v1    # "resId":I
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/CaptureBar;->getResolutionResId(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/MediaType;)I

    move-result v1

    goto :goto_3

    .line 4968
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelfTimerButton()V
    .locals 7

    .prologue
    .line 5011
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v4, :cond_0

    .line 5012
    return-void

    .line 5013
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 5014
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 5015
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_2

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v4, v5, :cond_2

    .line 5017
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5018
    return-void

    .line 5020
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5023
    const-wide/16 v2, 0x0

    .line 5024
    .local v2, "timer":J
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    if-eqz v4, :cond_3

    .line 5025
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    const-string/jumbo v5, "SelfTimer.Back"

    invoke-virtual {v4, v5}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 5030
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 5031
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v6, 0x7f020132

    invoke-direct {v5, v1, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5040
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5008
    return-void

    .line 5027
    :cond_3
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 5032
    :cond_4
    const-wide/16 v4, 0x3

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    .line 5033
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v6, 0x7f02024b

    invoke-direct {v5, v1, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 5034
    :cond_5
    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    .line 5035
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v6, 0x7f02024c

    invoke-direct {v5, v1, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 5037
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v4, v4, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v6, 0x7f02024a

    invoke-direct {v5, v1, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateSettinsEventHandler()V
    .locals 3

    .prologue
    .line 5047
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    if-nez v0, :cond_0

    .line 5048
    return-void

    .line 5050
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingsEventHandler() - old m_ManualCustomSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    invoke-virtual {v2}, Lcom/oneplus/base/Settings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 5052
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    .line 5053
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingsEventHandler() - new m_ManualCustomSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    invoke-virtual {v2}, Lcom/oneplus/base/Settings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5054
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualCustomSettings:Lcom/oneplus/base/Settings;

    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SettingsEventHandlerRAW:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 5045
    return-void
.end method

.method private updateSmileCaptureButton()V
    .locals 12

    .prologue
    .line 5061
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 5063
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 5065
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - camera is null"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    return-void

    .line 5069
    :cond_0
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v9, :cond_1

    .line 5071
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - No CaptureModeManager"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    return-void

    .line 5075
    :cond_1
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-nez v9, :cond_2

    .line 5077
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - No smile capture button"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    return-void

    .line 5081
    :cond_2
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-nez v9, :cond_3

    .line 5083
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - No smile capture controller"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5085
    return-void

    .line 5089
    :cond_3
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    .line 5091
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - Smile capture is not supported"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5092
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5093
    return-void

    .line 5096
    :cond_4
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v9}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v9, v10, :cond_5

    .line 5098
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - There is no smile capture for back camera"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5099
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5100
    return-void

    .line 5103
    :cond_5
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v10, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 5104
    .local v4, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v9, v4, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v9, :cond_6

    instance-of v3, v4, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .line 5105
    .local v3, "isPhoto":Z
    :goto_0
    if-nez v3, :cond_7

    .line 5107
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateSmileCaptureButton() - Not is photo mode"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5108
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5109
    return-void

    .line 5104
    .end local v3    # "isPhoto":Z
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 5112
    .restart local v3    # "isPhoto":Z
    :cond_7
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5116
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    sget-object v10, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v9, v10, :cond_8

    .line 5117
    const-string/jumbo v1, "SmileCapture.Front"

    .line 5120
    .local v1, "facingKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5123
    .local v2, "isEnabled":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    sget-object v10, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v10}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v9, v10, :cond_9

    .line 5124
    const-string/jumbo v8, "SmileCapture.Timer.Front"

    .line 5127
    .local v8, "timerKey":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v9

    const-wide/16 v10, 0x2

    invoke-virtual {v9, v8, v10, v11}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 5129
    .local v6, "smileWaitingDuration":J
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSmileCaptureButton() - smileWaitingDuration : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    const/4 v5, 0x0

    .line 5131
    .local v5, "resId":I
    if-nez v2, :cond_a

    .line 5132
    const v5, 0x7f020135

    .line 5139
    :goto_3
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5142
    iget-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v9, v9, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5059
    return-void

    .line 5119
    .end local v1    # "facingKey":Ljava/lang/String;
    .end local v2    # "isEnabled":Z
    .end local v5    # "resId":I
    .end local v6    # "smileWaitingDuration":J
    .end local v8    # "timerKey":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, "SmileCapture.Back"

    .restart local v1    # "facingKey":Ljava/lang/String;
    goto :goto_1

    .line 5126
    .restart local v2    # "isEnabled":Z
    :cond_9
    const-string/jumbo v8, "SmileCapture.Timer.Back"

    .restart local v8    # "timerKey":Ljava/lang/String;
    goto :goto_2

    .line 5133
    .restart local v5    # "resId":I
    .restart local v6    # "smileWaitingDuration":J
    :cond_a
    const-wide/16 v10, 0x2

    cmp-long v9, v6, v10

    if-nez v9, :cond_b

    .line 5134
    const v5, 0x7f020133

    goto :goto_3

    .line 5135
    :cond_b
    const-wide/16 v10, 0x5

    cmp-long v9, v6, v10

    if-nez v9, :cond_c

    .line 5136
    const v5, 0x7f020134

    goto :goto_3

    .line 5138
    :cond_c
    const v5, 0x7f020135

    goto :goto_3
.end method

.method private updateSwitchCameraButton()V
    .locals 1

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 5151
    return-void

    .line 5154
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButtonVisibility()V

    .line 5147
    return-void
.end method

.method private updateSwitchCameraButtonVisibility()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5162
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 5163
    return-void

    .line 5167
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5168
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 5175
    const/4 v1, 0x1

    .line 5180
    .local v1, "isCapturing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5181
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5180
    if-nez v2, :cond_1

    if-eqz v1, :cond_4

    .line 5183
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5184
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 5192
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsSwitchingCameraAnimationStarted:Z

    if-nez v2, :cond_3

    .line 5194
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButtonAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_2

    .line 5195
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020268

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButtonAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 5196
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButtonAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5159
    :cond_3
    return-void

    .line 5172
    .end local v1    # "isCapturing":Z
    :pswitch_0
    const/4 v1, 0x0

    .line 5173
    .restart local v1    # "isCapturing":Z
    goto :goto_0

    .line 5187
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5188
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 5189
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 5168
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoPauseResumeButton()V
    .locals 5

    .prologue
    const v4, 0x7f020093

    const/4 v3, 0x1

    .line 5206
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5228
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5203
    :goto_0
    return-void

    .line 5210
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5212
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5213
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVideoPauseResumeButton() - Animation is running."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 5218
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5219
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 5220
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    const v2, 0x7f02009b

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeAnimation:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 5223
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 5224
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f02031c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 5225
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeAnimation:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 5206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getIconButtonRect(Lcom/oneplus/camera/ui/CaptureBar$IconButton;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "iconButton"    # Lcom/oneplus/camera/ui/CaptureBar$IconButton;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1166
    if-nez p2, :cond_0

    .line 1167
    return-void

    .line 1169
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1170
    .local v0, "location":[I
    const/4 v2, 0x0

    .line 1171
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureBar$IconButtonSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1191
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1193
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 1194
    .local v1, "rotation":F
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 1195
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1196
    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    .line 1197
    aget v3, v0, v5

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 1198
    aget v3, v0, v6

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 1199
    aget v3, v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 1200
    aget v3, v0, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1164
    .end local v1    # "rotation":F
    :cond_2
    return-void

    .line 1174
    .restart local v2    # "view":Landroid/view/View;
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-eqz v3, :cond_1

    .line 1175
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 1179
    .local v2, "view":Landroid/view/View;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-eqz v3, :cond_1

    .line 1180
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 1184
    .local v2, "view":Landroid/view/View;
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-eqz v3, :cond_1

    .line 1185
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v2, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 1171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1246
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1284
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1249
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onCaptureUIEnabled()V

    goto :goto_0

    .line 1253
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->startBurstCapture()V

    goto :goto_0

    .line 1257
    :sswitch_2
    iget v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 1259
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1260
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1262
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    .line 1263
    const v2, 0x7f0d00c4

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 1271
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_1
    :goto_1
    iput v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    goto :goto_0

    .line 1267
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_2
    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)Z

    .line 1268
    const v2, 0x7f0d00c3

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    goto :goto_1

    .line 1275
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->linkToToastManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    .line 1278
    .local v1, "prevHandle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Lcom/oneplus/camera/ui/ToastManager;->showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    .line 1279
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1246
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_2
        0x272e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1624
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 1627
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 1629
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v6, 0x7f0a0083

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 1630
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0084

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarActionIconLayout:Landroid/view/View;

    .line 1632
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0086

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    .line 1633
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBarBottomContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_EmptyTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1634
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a008e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    .line 1635
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a008f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    .line 1636
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1637
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$19;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$19;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1662
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0085

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ActionButtonGroup:Landroid/widget/LinearLayout;

    .line 1663
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    .line 1664
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$20;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$20;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1685
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    .line 1686
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    .line 1687
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a008a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1688
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$21;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$21;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1696
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0089

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    .line 1697
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0088

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1698
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicatorContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$22;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$22;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a008d

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    .line 1707
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ModeIndicatorContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0a008c

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1708
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicatorContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$23;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$23;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    .line 1717
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$24;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$24;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0095

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonTextContainer:Landroid/widget/RelativeLayout;

    .line 1745
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonTextContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0097

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingButtonText:Landroid/widget/TextView;

    .line 1746
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 1747
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_BokehModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 1748
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 1749
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualSettingSavingButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 1751
    const/4 v6, 0x2

    new-array v2, v6, [Landroid/graphics/drawable/Drawable;

    const v6, 0x7f020069

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v2, v10

    const v6, 0x7f02006a

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v2, v11

    .line 1752
    .local v2, "flashAutoOnDrawables":[Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/oneplus/drawable/RepeatTransitionDrawable;

    const/16 v7, 0xc8

    const/4 v8, 0x3

    invoke-direct {v6, v2, v7, v8}, Lcom/oneplus/drawable/RepeatTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;II)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    .line 1753
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v6, v11}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 1755
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    .line 1756
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isBusinessCardMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1758
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1759
    iput-object v9, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    .line 1804
    :goto_0
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f0a0092

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    .line 1805
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0093

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    .line 1806
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$26;

    invoke-direct {v7, p0, v1}, Lcom/oneplus/camera/ui/CaptureBar$26;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1828
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoRecordingPauseResumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 1830
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addNavBarAlignedView(Landroid/view/View;)V

    .line 1833
    invoke-virtual {v1, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    .line 1836
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$27;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$27;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1844
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$28;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$28;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1853
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$29;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$29;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1864
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$30;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$30;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1907
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$31;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$31;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1916
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$32;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$32;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1926
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$33;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$33;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1937
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$34;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$34;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1955
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$35;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$35;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1964
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$36;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$36;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1972
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$37;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$37;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1983
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$38;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$38;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2005
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$39;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$39;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2038
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$40;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$40;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2052
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$41;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$41;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2065
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$42;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$42;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2073
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$43;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$43;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2090
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$44;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$44;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2105
    const-class v6, Lcom/oneplus/camera/FaceBeautyController;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/FaceBeautyController;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    .line 2106
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-eqz v6, :cond_0

    .line 2108
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v7, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$45;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$45;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/FaceBeautyController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2119
    :cond_0
    const-class v6, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ExposureController;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 2120
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v6, :cond_1

    .line 2122
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v7, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$46;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$46;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2138
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v7, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$47;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$47;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2157
    :cond_1
    const-class v6, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/FlashController;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 2158
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v6, :cond_2

    .line 2160
    new-instance v3, Lcom/oneplus/camera/ui/CaptureBar$48;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureBar$48;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2169
    .local v3, "flashContollercallback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v7, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7, v3}, Lcom/oneplus/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2170
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v7, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7, v3}, Lcom/oneplus/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2171
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v7, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7, v3}, Lcom/oneplus/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2172
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v7, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7, v3}, Lcom/oneplus/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2176
    .end local v3    # "flashContollercallback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_2
    const-class v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 2177
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v6, :cond_3

    .line 2179
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$49;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$49;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2212
    :cond_3
    const-class v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 2213
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v6, :cond_4

    .line 2215
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$50;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$50;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2228
    :cond_4
    const-class v6, Lcom/oneplus/camera/ui/ReviewScreen;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/ReviewScreen;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    .line 2229
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    if-eqz v6, :cond_5

    .line 2231
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ReviewScreen:Lcom/oneplus/camera/ui/ReviewScreen;

    sget-object v7, Lcom/oneplus/camera/ui/ReviewScreen;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$51;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$51;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/ui/ReviewScreen;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2242
    :cond_5
    const-class v6, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 2243
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v6, :cond_7

    .line 2245
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$52;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$52;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2253
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$53;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$53;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2261
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$54;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$54;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2277
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "scene$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/Scene;

    .line 2278
    .local v4, "scene":Lcom/oneplus/camera/scene/Scene;
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/CaptureBar;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    goto :goto_1

    .line 1763
    .end local v4    # "scene":Lcom/oneplus/camera/scene/Scene;
    .end local v5    # "scene$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$25;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$25;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2282
    :cond_7
    const-class v6, Lcom/oneplus/camera/SmileCaptureController;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/SmileCaptureController;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    .line 2283
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-eqz v6, :cond_8

    .line 2285
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    sget-object v7, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$55;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$55;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/SmileCaptureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2295
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 2296
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_8

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2297
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2301
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_8
    const-class v6, Lcom/oneplus/camera/ui/SecondLayerBar;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/SecondLayerBar;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    .line 2302
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    if-eqz v6, :cond_9

    .line 2304
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    sget-object v7, Lcom/oneplus/camera/ui/SecondLayerBar;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$56;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$56;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/ui/SecondLayerBar;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2317
    :cond_9
    const-class v6, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 2318
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/CaptureBar$57;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/CaptureBar$57;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2328
    const-class v6, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 2329
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v6, :cond_a

    .line 2330
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v6, v7, v10}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 2333
    :cond_a
    const-class v6, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 2334
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v6, :cond_b

    .line 2336
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iget-object v8, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 2337
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$58;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$58;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-interface {v6, v9, v7}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 2363
    :cond_b
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2364
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2365
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->SELF_TIMER:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2366
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RESOLUTION:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2367
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2368
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2369
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->MANUAL_MODE_CUSTOM:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2370
    new-instance v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    sget-object v7, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RAW:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-direct {v6, p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .line 2373
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FlashItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2374
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ResolutionItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2375
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_HdrHqItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2376
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SelfTimerItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2377
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RawItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2378
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ManualModeCustomItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2379
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    if-eqz v6, :cond_c

    .line 2380
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SmileCaptureItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2381
    :cond_c
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_FaceBeautyItem:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v6, v6, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/CaptureBar;->addViewToActionGroup(Landroid/view/View;I)V

    .line 2384
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSelfTimerButton()V

    .line 2385
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateResolutionButton()V

    .line 2386
    invoke-direct {p0, v10}, Lcom/oneplus/camera/ui/CaptureBar;->updateModeIndicator(Z)V

    .line 2387
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButton()V

    .line 2388
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSmileCaptureButton()V

    .line 2389
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButton()V

    .line 2390
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateFaceBeautyButton()V

    .line 2391
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateHdrHqButton()V

    .line 2392
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateRawButton()V

    .line 2395
    invoke-direct {p0, v11}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonFunctions(Z)V

    .line 2398
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 2399
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 2400
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 2403
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/oneplus/camera/ui/CaptureBar$59;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/CaptureBar$59;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1621
    return-void
.end method

.method public onKeyDown(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 2532
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    .line 2533
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 2542
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2543
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyDownEventTime:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 2544
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v2

    .line 2534
    .end local v0    # "currentTime":J
    :cond_1
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 2535
    const/16 v2, 0x57

    if-eq p1, v2, :cond_0

    .line 2536
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    .line 2555
    :cond_2
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v2

    .line 2546
    .restart local v0    # "currentTime":J
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2548
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyDownEventTime:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2549
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed(Z)V

    .line 2550
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/KeyEventArgs;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2551
    const/16 v2, 0x2710

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2552
    :cond_4
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v2
.end method

.method public onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    const-wide/16 v6, 0x190

    .line 2562
    const/4 v0, 0x1

    .line 2563
    .local v0, "capture":Z
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    .line 2564
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 2573
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2574
    .local v2, "currentTime":J
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/KeyEventArgs;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyUpEventTime:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 2575
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v1

    .line 2565
    .end local v2    # "currentTime":J
    :cond_1
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 2566
    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    .line 2567
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 2595
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 2597
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    sget-object v4, Lcom/oneplus/camera/ui/SecondLayerBar;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/ui/SecondLayerBar;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2599
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondLayerBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2600
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v1

    .line 2578
    .restart local v2    # "currentTime":J
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/KeyEventArgs;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExternalKeyPerformButtonClickTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    .line 2579
    const/4 v0, 0x0

    .line 2581
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2583
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/KeyEventArgs;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2585
    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_ExternalKeyPerformButtonClickTime:J

    .line 2586
    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar;->performButtonClick(Lcom/oneplus/camera/ui/CaptureButtons$Button;I)V

    .line 2591
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_KeyUpEventTime:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2592
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v1

    .line 2589
    :cond_4
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased(Z)V

    goto :goto_0

    .line 2603
    .end local v2    # "currentTime":J
    :cond_5
    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v1
.end method

.method public performButtonClick(Lcom/oneplus/camera/ui/CaptureButtons$Button;I)V
    .locals 3
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "flags"    # I

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performButtonClick() - button : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    return-void

    .line 3082
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3089
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setButtonIcon() - Unknown button : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    return-void

    .line 3085
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed(Z)V

    .line 3086
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased()V

    .line 3072
    return-void

    .line 3082
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 3575
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3576
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3577
    return-object v5

    .line 3581
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3587
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setButtonBackground() - Unknown button : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    return-object v5

    .line 3584
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    .line 3590
    .local v3, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$62;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureBar$62;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    .line 3598
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3601
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 3602
    return-object v0

    .line 3581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 3611
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3612
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3613
    return-object v5

    .line 3617
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3623
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setButtonIcon() - Unknown button : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    return-object v5

    .line 3620
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    .line 3626
    .local v3, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$63;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/CaptureBar$63;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    .line 3634
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3637
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 3638
    return-object v0

    .line 3617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "style"    # Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3647
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3648
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3649
    return-object v4

    .line 3653
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3659
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setButtonStyle() - Unknown button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    return-object v4

    .line 3656
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)V

    .line 3662
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3665
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonStyle()V

    .line 3666
    return-object v0

    .line 3653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonVisibility(Lcom/oneplus/camera/ui/CaptureButtons$Button;ZI)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "isVisible"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3675
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3676
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3677
    return-object v4

    .line 3681
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-getcom-oneplus-camera-ui-CaptureButtons$ButtonSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3687
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setButtonVisibility() - Unknown button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    return-object v4

    .line 3684
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-direct {v0, p0, v1, p2}, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Z)V

    .line 3690
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    iget-object v1, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3693
    invoke-direct {p0, p3}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities(I)V

    .line 3694
    return-object v0

    .line 3681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPanelStyle(Lcom/oneplus/camera/ui/CaptureControlPanel$Style;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "style"    # Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 3733
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 3734
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3735
    return-object v3

    .line 3738
    :cond_0
    if-nez p1, :cond_1

    .line 3740
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPanelStyle() - No style specified"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    return-object v3

    .line 3745
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureControlPanel$Style;)V

    .line 3746
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3747
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updatePanelStyle()V

    .line 3748
    return-object v0
.end method
