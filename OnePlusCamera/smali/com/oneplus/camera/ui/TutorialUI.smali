.class public Lcom/oneplus/camera/ui/TutorialUI;
.super Lcom/oneplus/camera/UIComponent;
.source "TutorialUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/TutorialUI$10;,
        Lcom/oneplus/camera/ui/TutorialUI$11;,
        Lcom/oneplus/camera/ui/TutorialUI$1;,
        Lcom/oneplus/camera/ui/TutorialUI$2;,
        Lcom/oneplus/camera/ui/TutorialUI$3;,
        Lcom/oneplus/camera/ui/TutorialUI$4;,
        Lcom/oneplus/camera/ui/TutorialUI$5;,
        Lcom/oneplus/camera/ui/TutorialUI$6;,
        Lcom/oneplus/camera/ui/TutorialUI$7;,
        Lcom/oneplus/camera/ui/TutorialUI$8;,
        Lcom/oneplus/camera/ui/TutorialUI$9;
    }
.end annotation


# static fields
.field private static final ALPHA_ZOOM_FADE_OUT_DEFAULT_VALUE:F = 0.8f

.field private static final DELAY_HIDE_TUTORIAL_CONTAINER:J = 0x1388L

.field private static final DISTANCE_ANIMATION_DRAG_FOCAL_POINT:I = 0x12c

.field private static final DISTANCE_ANIMATION_ENTER_EXIT_IMMERSIVE_MODE:I = 0x190

.field private static final DISTANCE_ANIMATION_ZOOM_X:I = -0x12c

.field private static final DURATION_ANIMATION_DRAG_FOCAL_POINT_SCALE:J = 0x190L

.field private static final DURATION_ANIMATION_ENTER_EXIT_IMMERSIVE_MODE:J = 0x683L

.field private static final DURATION_ANIMATION_FADE_IN_OUT:J = 0xc8L

.field private static final DURATION_ANIMATION_TRANSLATION:J = 0x3e8L

.field private static final DURATION_ANIMATION_ZOOM_SCALE:J = 0xfaL

.field private static final FACTOR_DECELERATE_INTERPOLATOR:F = 2.0f

.field private static final INSET_X_Y_HOLLOW_DRAWABLE:I = 0x9

.field private static final MSG_HIDE_TUTORIAL_CONTAINER:I = 0xc351

.field private static final MSG_SHOW_ZOOM_ANIMATION:I = 0xc352

.field private static final PREF_TUTORIAL_BOKEH:Ljava/lang/String; = "TutorialBokeh"

.field private static final PREF_TUTORIAL_DRAG_FOCAL_POINT:Ljava/lang/String; = "TutorialDragFocalPoint"

.field private static final PREF_TUTORIAL_DRAG_ZOOM_VALUE:Ljava/lang/String; = "TutorialDragZoomValue"

.field private static final PREF_TUTORIAL_ENTER_CUSTOM_MODE:Ljava/lang/String; = "TutorialEnterCustomMode"

.field private static final PREF_TUTORIAL_ENTER_IMMERSIVE:Ljava/lang/String; = "TutorialEnterImmersive"

.field private static final PREF_TUTORIAL_EXIT_IMMERSIVE:Ljava/lang/String; = "TutorialExitImmersive"

.field private static final PREF_TUTORIAL_FRONT_CAMERA:Ljava/lang/String; = "TutorialFrontCamera"

.field private static final PREF_TUTORIAL_PANORAMA:Ljava/lang/String; = "TutorialPanorama"

.field private static final PREF_TUTORIAL_SAVE_CUSTOM_BUTTON:Ljava/lang/String; = "TutorialSaveCustomButton"

.field private static final PREF_TUTORIAL_SWIPE_LEFT_RIGHT:Ljava/lang/String; = "TutorialSwipeLeftRight"

.field private static final REPEAT_COUNT_FOR_ANIMATION:I = 0x3

.field private static final SCALE_SIZE_FOR_DRAG_FOCAL_POINT_ANIMATION:F = 0.7f

.field private static final SCALE_SIZE_FOR_ZOOM_ANIMATION:F = 0.85f


# instance fields
.field private final m_CameraActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraGalleryUIStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private final m_CaptureModePanelChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private final m_CustomModeClickHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CustomModeSettingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_FocalPointFocusView:Landroid/view/View;

.field private m_FocalPointWhiteView:Landroid/view/View;

.field private final m_FocusControllerAFRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

.field private m_IsZoomValueAnimation:Z

.field private m_LockRotationHandle:Lcom/oneplus/base/Handle;

.field private final m_SelfTimerStartedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SwipeToSwitchSimpleCaptureModeHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_TutorialUIContainer:Landroid/view/ViewGroup;

.field private m_ViewFinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_ZoomValueAnimationCounter:I

.field private final m_ZoomValueClickHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ZoomValueDragedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ZoomValueFadeOutImageView:Landroid/view/View;

.field private m_ZoomValueImageView:Landroid/view/View;

.field private final m_ZoomValueLongClickHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/TutorialUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/TutorialUI;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueAnimationCounter:I

    return v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/TutorialUI;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueAnimationCounter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/TutorialUI;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TutorialUI;->hideTutorialUIContainer(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/TutorialUI;Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TutorialUI;->onAFRegionChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->showBokehTutorial()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->showPanoramaTutorial()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->showSwipeForVideoPortraitTutorial()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->updateFrontCameraTutorial()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/TutorialUI;I)V
    .locals 0
    .param p1, "newSetting"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TutorialUI;->onCustomModeSettingChanged(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onEnterCustomMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onEnterImmersiveMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onExitImmersiveMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onSwipeToSwitchSimpleCaptureMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onZoomValueAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onZoomValueClick()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onZoomValueDragedorLongClick()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 211
    const-string/jumbo v0, "Tutorial UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 105
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$1;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CustomModeClickHandler:Lcom/oneplus/base/EventHandler;

    .line 113
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$2;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_SwipeToSwitchSimpleCaptureModeHandler:Lcom/oneplus/base/EventHandler;

    .line 121
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$3;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueClickHandler:Lcom/oneplus/base/EventHandler;

    .line 129
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$4;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueDragedHandler:Lcom/oneplus/base/EventHandler;

    .line 137
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$5;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueLongClickHandler:Lcom/oneplus/base/EventHandler;

    .line 148
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$6;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CameraActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 157
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$7;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CameraGalleryUIStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 167
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$8;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModePanelChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 176
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$9;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CustomModeSettingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 185
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$10;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocusControllerAFRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 198
    new-instance v0, Lcom/oneplus/camera/ui/TutorialUI$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/TutorialUI$11;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_SelfTimerStartedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 209
    return-void
.end method

.method private canSwipeForVideoAndPortrait()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 218
    iget-object v10, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-nez v10, :cond_1

    .line 219
    :cond_0
    return v12

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 222
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 223
    .local v5, "isReadyToCapture":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v10, v11, :cond_2

    const/4 v3, 0x1

    .line 224
    .local v3, "isBackCam":Z
    :goto_0
    iget-object v10, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v11, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 225
    .local v4, "isCaptureModePanelOpen":Z
    iget-object v10, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v11, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 226
    .local v2, "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    const/4 v1, 0x0

    .line 227
    .local v1, "containsBokehMode":Z
    iget-object v10, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v11, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 228
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    if-nez v6, :cond_3

    .line 229
    return v12

    .line 223
    .end local v1    # "containsBokehMode":Z
    .end local v2    # "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v3    # "isBackCam":Z
    .end local v4    # "isCaptureModePanelOpen":Z
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isBackCam":Z
    goto :goto_0

    .line 230
    .restart local v1    # "containsBokehMode":Z
    .restart local v2    # "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v4    # "isCaptureModePanelOpen":Z
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "mode$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 232
    .local v7, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v10, v7, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v10, :cond_4

    .line 233
    const/4 v1, 0x1

    goto :goto_1

    .line 235
    .end local v7    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    if-eqz v4, :cond_7

    .line 243
    :cond_6
    return v12

    .line 235
    :cond_7
    instance-of v10, v2, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-eqz v10, :cond_6

    .line 237
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 238
    .local v9, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "TutorialSwipeLeftRight"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    .line 240
    const/4 v10, 0x1

    return v10
.end method

.method private doDragFocalPointAnimation(FF)V
    .locals 4
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const v1, 0x3f333333    # 0.7f

    .line 274
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 280
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/ui/TutorialUI$13;-><init>(Lcom/oneplus/camera/ui/TutorialUI;FF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    return-void
.end method

.method private doEnterExitImmersiveModeAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "distanceY"    # I

    .prologue
    .line 251
    const v1, 0x7f0a0120

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "focusImage":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 254
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x683

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    .line 255
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/TutorialUI$12;

    invoke-direct {v2, p0, v0, p2}, Lcom/oneplus/camera/ui/TutorialUI$12;-><init>(Lcom/oneplus/camera/ui/TutorialUI;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 267
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 248
    return-void
.end method

.method private doZoomAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$14;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$14;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 353
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$15;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$15;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    return-void
.end method

.method private hideTutorialUIContainer(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 367
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_LockRotationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_LockRotationHandle:Lcom/oneplus/base/Handle;

    .line 369
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 371
    if-eqz p1, :cond_6

    .line 373
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    new-instance v7, Lcom/oneplus/camera/ui/TutorialUI$16;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/TutorialUI$16;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    const-wide/16 v4, 0xc8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/camera/ui/TutorialUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 388
    :goto_0
    const v0, 0xc351

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 389
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideTutorialUIContainer()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ImmersiveModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 405
    :cond_3
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_IsZoomValueAnimation:Z

    .line 406
    const v0, 0xc352

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 410
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 365
    :cond_5
    return-void

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method private inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I
    .param p2, "hideTutorialUIWhenTouch"    # Z

    .prologue
    .line 424
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 425
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f0a0114

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, "touchReceiverView":Landroid/view/View;
    new-instance v2, Lcom/oneplus/camera/ui/TutorialUI$17;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/ui/TutorialUI$17;-><init>(Lcom/oneplus/camera/ui/TutorialUI;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    return-object v0
.end method

.method private lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V
    .locals 7
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v6, 0x0

    .line 444
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_LockRotationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_LockRotationHandle:Lcom/oneplus/base/Handle;

    .line 445
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_LockRotationHandle:Lcom/oneplus/base/Handle;

    .line 447
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 449
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/TutorialUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 441
    :cond_0
    return-void
.end method

.method private onAFRegionChanged(Ljava/util/List;)V
    .locals 17
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
    .line 647
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_ViewFinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v13, :cond_1

    .line 648
    :cond_0
    return-void

    .line 647
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v14, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 650
    .local v4, "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v13, v4, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v13, :cond_2

    .line 651
    return-void

    .line 653
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    .line 654
    .local v3, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 655
    .local v8, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v13, "TutorialDragFocalPoint"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_3

    .line 658
    const v13, 0x7f03003a

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v10

    .line 659
    .local v10, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 660
    const v13, 0x7f0a0119

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    .line 661
    const v13, 0x7f0a0118

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    .line 664
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string/jumbo v14, "TutorialDragFocalPoint"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 667
    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901a2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v13, v14

    .line 668
    .local v5, "halfCircleSize":F
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-virtual {v13}, Lcom/oneplus/camera/Camera$MeteringRect;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 669
    .local v6, "meteringRect":Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 670
    .local v7, "pointF":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_ViewFinder:Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v14, v15, v7, v0}, Lcom/oneplus/camera/ui/Viewfinder;->pointFromPreview(FFLandroid/graphics/PointF;I)Z

    .line 671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_ViewFinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v14, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    .line 672
    .local v9, "previewBoundsRect":Landroid/graphics/RectF;
    iget v13, v7, Landroid/graphics/PointF;->x:F

    sub-float v11, v13, v5

    .line 673
    .local v11, "translationX":F
    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v12, v13, v5

    .line 674
    .local v12, "translationY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointWhiteView:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocalPointFocusView:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 680
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    cmpl-float v13, v11, v13

    if-lez v13, :cond_4

    .line 682
    const/high16 v13, 0x43960000    # 300.0f

    sub-float v1, v11, v13

    .line 688
    .local v1, "animationTargetX":F
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    cmpl-float v13, v12, v13

    if-lez v13, :cond_5

    .line 690
    const/high16 v13, 0x43960000    # 300.0f

    sub-float v2, v12, v13

    .line 699
    .local v2, "animationTargetY":F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/TutorialUI;->doDragFocalPointAnimation(FF)V

    .line 704
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onAFRegionChanged() - touch x:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",y:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", translatyion x:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",y:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    const-string/jumbo v15, ",preview x:"

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    const-string/jumbo v15, ",y:"

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    const-string/jumbo v15, ",ax:"

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    const-string/jumbo v15, ",ay:"

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .end local v1    # "animationTargetX":F
    .end local v2    # "animationTargetY":F
    .end local v5    # "halfCircleSize":F
    .end local v6    # "meteringRect":Landroid/graphics/RectF;
    .end local v7    # "pointF":Landroid/graphics/PointF;
    .end local v9    # "previewBoundsRect":Landroid/graphics/RectF;
    .end local v10    # "rootView":Landroid/view/View;
    .end local v11    # "translationX":F
    .end local v12    # "translationY":F
    :cond_3
    return-void

    .line 686
    .restart local v5    # "halfCircleSize":F
    .restart local v6    # "meteringRect":Landroid/graphics/RectF;
    .restart local v7    # "pointF":Landroid/graphics/PointF;
    .restart local v9    # "previewBoundsRect":Landroid/graphics/RectF;
    .restart local v10    # "rootView":Landroid/view/View;
    .restart local v11    # "translationX":F
    .restart local v12    # "translationY":F
    :cond_4
    const/high16 v13, 0x43960000    # 300.0f

    add-float v1, v11, v13

    .restart local v1    # "animationTargetX":F
    goto/16 :goto_0

    .line 694
    :cond_5
    const/high16 v13, 0x43960000    # 300.0f

    add-float v2, v12, v13

    .restart local v2    # "animationTargetY":F
    goto/16 :goto_1
.end method

.method private onCustomModeSettingChanged(I)V
    .locals 7
    .param p1, "newSetting"    # I

    .prologue
    const/4 v6, 0x1

    .line 713
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCustomModeSettingChanged() - newSetting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 716
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 717
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "TutorialSaveCustomButton"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    const v3, 0x7f030041

    invoke-direct {p0, v3, v6}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v2

    .line 721
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 722
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/TutorialUI;->setConfirmTextListener(Landroid/view/View;)V

    .line 723
    const v3, 0x7f0a011d

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/TutorialUI;->setEmptyTouchListener(Landroid/view/View;I)V

    .line 726
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "TutorialSaveCustomButton"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 728
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCustomModeSettingChanged() - save to shared preference."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .end local v2    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onEnterCustomMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 522
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnterCustomMode() - "

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 525
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 526
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "TutorialEnterCustomMode"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    const v3, 0x7f03003c

    invoke-direct {p0, v3, v5}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 531
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/TutorialUI;->setConfirmTextListener(Landroid/view/View;)V

    .line 532
    const v3, 0x7f0a011d

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/TutorialUI;->setEmptyTouchListener(Landroid/view/View;I)V

    .line 535
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "TutorialEnterCustomMode"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnterCustomMode() - save to shared preference."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .end local v2    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onEnterImmersiveMode()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 488
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v6, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 492
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 493
    .local v3, "isReadyToCapture":Z
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 494
    .local v1, "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 495
    .local v4, "preference":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v6

    const-string/jumbo v7, "ManualModeUI.IsSimpleUIModeEnabled"

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 496
    .local v2, "isEmmerSiveModeEnabled":Z
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    instance-of v6, v1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v6, :cond_1

    .line 498
    const-string/jumbo v6, "TutorialEnterImmersive"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 501
    const v6, 0x7f03003d

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v5

    .line 502
    .local v5, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 505
    const/16 v6, 0x190

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/ui/TutorialUI;->doEnterExitImmersiveModeAnimation(Landroid/view/View;I)V

    .line 508
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "TutorialEnterImmersive"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    const v6, 0xc351

    const-wide/16 v8, 0x1388

    invoke-static {p0, v6, v10, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 513
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onEnterImmersiveMode() - save to shared preference."

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v5    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private onExitImmersiveMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 547
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 548
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "TutorialExitImmersive"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    const v3, 0x7f03003e

    invoke-direct {p0, v3, v6}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v2

    .line 552
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 555
    const/16 v3, -0x190

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/TutorialUI;->doEnterExitImmersiveModeAnimation(Landroid/view/View;I)V

    .line 558
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "TutorialExitImmersive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    const v3, 0xc351

    const-wide/16 v4, 0x1388

    invoke-static {p0, v3, v6, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 563
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onExitImmersiveMode() - save to shared preference."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v2    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onSwipeToSwitchSimpleCaptureMode()V
    .locals 5

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 738
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 739
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "TutorialSwipeLeftRight"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "TutorialSwipeLeftRight"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 743
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSwipeToSwitchSimpleCaptureMode() - save to shared preference."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    return-void
.end method

.method private onZoomValueAnimationEnd()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomValueAnimationEnd() - already do animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueAnimationCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " times."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->hideTutorialUIContainer(Z)V

    .line 749
    return-void
.end method

.method private onZoomValueClick()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 759
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onZoomValueClick() - "

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 762
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 763
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "TutorialDragZoomValue"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 766
    const v3, 0x7f03003b

    invoke-direct {p0, v3, v5}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 768
    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueImageView:Landroid/view/View;

    .line 769
    const v3, 0x7f0a011b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueFadeOutImageView:Landroid/view/View;

    .line 772
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "TutorialDragZoomValue"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 775
    const v3, 0xc351

    const-wide/16 v4, 0x1388

    invoke-static {p0, v3, v6, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 778
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_IsZoomValueAnimation:Z

    .line 779
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->doZoomAnimation()V

    .line 781
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onZoomValueClick() - save to shared preference."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .end local v2    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onZoomValueDragedorLongClick()V
    .locals 5

    .prologue
    .line 789
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onZoomValueDraggedorLongClick()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_IsZoomValueAnimation:Z

    if-eqz v2, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->onZoomValueAnimationEnd()V

    .line 794
    return-void

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 797
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 798
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "TutorialDragZoomValue"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 799
    return-void

    .line 801
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "TutorialDragZoomValue"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 802
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onZoomValueDraggedorLongClick() - save to shared preference."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method private setConfirmTextListener(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 809
    const v1, 0x7f0a011e

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/ui/TutorialUI;->setEmptyTouchListener(Landroid/view/View;I)V

    .line 810
    const v1, 0x7f0a0117

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 811
    .local v0, "confirmTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$20;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$20;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    return-void
.end method

.method private setEmptyTouchListener(Landroid/view/View;I)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "viewId"    # I

    .prologue
    .line 826
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 827
    .local v0, "innerView":Landroid/view/View;
    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$21;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$21;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 824
    return-void
.end method

.method private setIconShadowDrawable(Landroid/widget/ImageView;I)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "drawableResId"    # I

    .prologue
    .line 841
    if-nez p1, :cond_0

    .line 842
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 844
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0c004b

    invoke-direct {v1, v3, p2, v4}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;II)V

    .line 845
    .local v1, "shadowDrawable":Lcom/oneplus/camera/drawable/ShadowDrawable;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 846
    .local v2, "shadowRadius":I
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setPaddings(IIII)V

    .line 847
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    return-void
.end method

.method private showBokehTutorial()V
    .locals 17

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v14, :cond_0

    .line 855
    return-void

    .line 857
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 858
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v14, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v14}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 859
    .local v8, "isReadyToCapture":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v14

    sget-object v15, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v15}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v14, v15, :cond_1

    const/4 v7, 0x1

    .line 860
    .local v7, "isBackCam":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v15, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v15}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 861
    .local v5, "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    const/4 v4, 0x0

    .line 862
    .local v4, "containsBokehMode":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v15, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v15}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 863
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    if-nez v9, :cond_2

    .line 864
    return-void

    .line 859
    .end local v4    # "containsBokehMode":Z
    .end local v5    # "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v7    # "isBackCam":Z
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isBackCam":Z
    goto :goto_0

    .line 865
    .restart local v4    # "containsBokehMode":Z
    .restart local v5    # "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    :cond_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "mode$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 867
    .local v10, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v14, v10, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v14, :cond_3

    .line 868
    const/4 v4, 0x1

    goto :goto_1

    .line 870
    .end local v10    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_4
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    instance-of v14, v5, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v14, :cond_5

    .line 872
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 873
    .local v12, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "TutorialBokeh"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_5

    .line 876
    const v14, 0x7f030039

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v13

    .line 877
    .local v13, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 878
    const v14, 0x7f0a0115

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/camera/ui/TutorialUI;->setEmptyTouchListener(Landroid/view/View;I)V

    .line 879
    const v14, 0x7f0a0117

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 880
    .local v3, "confirmTextView":Landroid/widget/TextView;
    new-instance v14, Lcom/oneplus/camera/ui/TutorialUI$22;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oneplus/camera/ui/TutorialUI$22;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    const v14, 0x7f0202f6

    invoke-virtual {v2, v14}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 893
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const v14, 0x7f0a0115

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 894
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 895
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 896
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 899
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string/jumbo v15, "TutorialBokeh"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "showBokehTutorial() - save to shared preference."

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "confirmTextView":Landroid/widget/TextView;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "preference":Landroid/content/SharedPreferences;
    .end local v13    # "rootView":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private showPanoramaTutorial()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 909
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v6, :cond_0

    .line 910
    return-void

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 913
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 914
    .local v3, "isReadyToCapture":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v6, v7, :cond_2

    const/4 v2, 0x1

    .line 915
    .local v2, "isBackCam":Z
    :goto_0
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 916
    .local v1, "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    instance-of v6, v1, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;

    if-eqz v6, :cond_1

    .line 918
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 919
    .local v4, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "TutorialPanorama"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 922
    const v6, 0x7f030040

    invoke-direct {p0, v6, v10}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v5

    .line 923
    .local v5, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 926
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "TutorialPanorama"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 929
    const v6, 0xc351

    const-wide/16 v8, 0x1388

    invoke-static {p0, v6, v10, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 931
    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "showPanoramaTutorial() - save to shared preference."

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .end local v4    # "preference":Landroid/content/SharedPreferences;
    .end local v5    # "rootView":Landroid/view/View;
    :cond_1
    return-void

    .line 914
    .end local v1    # "curMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v2    # "isBackCam":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isBackCam":Z
    goto :goto_0
.end method

.method private showSwipeForVideoPortraitTutorial()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 940
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->canSwipeForVideoAndPortrait()Z

    move-result v3

    if-nez v3, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 945
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v3, 0x7f030042

    invoke-direct {p0, v3, v6}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v2

    .line 946
    .local v2, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 947
    const v3, 0x7f0a012e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0202fc

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/TutorialUI;->setIconShadowDrawable(Landroid/widget/ImageView;I)V

    .line 948
    const v3, 0x7f0a012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0202fd

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/TutorialUI;->setIconShadowDrawable(Landroid/widget/ImageView;I)V

    .line 951
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 952
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "TutorialSwipeLeftRight"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    const v3, 0xc351

    const-wide/16 v4, 0x1388

    invoke-static {p0, v3, v6, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 957
    iget-object v3, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showSwipeForVideoPortraitTutorial() - save to shared preference."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private updateFrontCameraTutorial()V
    .locals 14

    .prologue
    .line 963
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v11, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 967
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v11, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v11}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 968
    .local v3, "isReadyToCapture":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v11

    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v11, v12}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v11, v12, :cond_2

    const/4 v2, 0x1

    .line 969
    .local v2, "isFrontCam":Z
    :goto_0
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v12, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v11, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 971
    .local v4, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    instance-of v11, v4, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-eqz v11, :cond_1

    .line 973
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 974
    .local v5, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v11, "TutorialFrontCamera"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 977
    const v11, 0x7f03003f

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;

    move-result-object v9

    .line 978
    .local v9, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->lockPortraitAndShowContainer(Lcom/oneplus/camera/CameraActivity;)V

    .line 979
    invoke-direct {p0, v9}, Lcom/oneplus/camera/ui/TutorialUI;->setConfirmTextListener(Landroid/view/View;)V

    .line 982
    const v11, 0x7f0a0121

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 983
    .local v10, "viewFrontCamContainer":Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080077

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    invoke-direct {v1, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 984
    .local v1, "drawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 985
    .local v6, "rectFaceBeauty":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 986
    .local v8, "rectSmileCapture":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 987
    .local v7, "rectFlash":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v12, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v11, v12, v6}, Lcom/oneplus/camera/ui/CaptureBar;->getIconButtonRect(Lcom/oneplus/camera/ui/CaptureBar$IconButton;Landroid/graphics/Rect;)V

    .line 988
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v12, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->SMILE_CAPTURE:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v11, v12, v8}, Lcom/oneplus/camera/ui/CaptureBar;->getIconButtonRect(Lcom/oneplus/camera/ui/CaptureBar$IconButton;Landroid/graphics/Rect;)V

    .line 989
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v12, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FLASH:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-virtual {v11, v12, v7}, Lcom/oneplus/camera/ui/CaptureBar;->getIconButtonRect(Lcom/oneplus/camera/ui/CaptureBar$IconButton;Landroid/graphics/Rect;)V

    .line 990
    const/16 v11, 0x9

    const/16 v12, 0x9

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 991
    const/16 v11, 0x9

    const/16 v12, 0x9

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 992
    const/16 v11, 0x9

    const/16 v12, 0x9

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 994
    new-instance v11, Lcom/oneplus/drawable/HollowDrawable;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/graphics/Rect;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    invoke-direct {v11, v1, v12}, Lcom/oneplus/drawable/HollowDrawable;-><init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Rect;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 996
    const v11, 0x7f0a0125

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0202f8

    invoke-direct {p0, v11, v12}, Lcom/oneplus/camera/ui/TutorialUI;->setIconShadowDrawable(Landroid/widget/ImageView;I)V

    .line 997
    const v11, 0x7f0a0127

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0202fb

    invoke-direct {p0, v11, v12}, Lcom/oneplus/camera/ui/TutorialUI;->setIconShadowDrawable(Landroid/widget/ImageView;I)V

    .line 998
    const v11, 0x7f0a0129

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0202f9

    invoke-direct {p0, v11, v12}, Lcom/oneplus/camera/ui/TutorialUI;->setIconShadowDrawable(Landroid/widget/ImageView;I)V

    .line 1001
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v12, "TutorialFrontCamera"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1003
    iget-object v11, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "updateFrontCameraTutorial() - show front camera tutorial"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .end local v1    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v5    # "preference":Landroid/content/SharedPreferences;
    .end local v6    # "rectFaceBeauty":Landroid/graphics/Rect;
    .end local v7    # "rectFlash":Landroid/graphics/Rect;
    .end local v8    # "rectSmileCapture":Landroid/graphics/Rect;
    .end local v9    # "rootView":Landroid/view/View;
    .end local v10    # "viewFrontCamContainer":Landroid/view/View;
    :cond_1
    return-void

    .line 968
    .end local v2    # "isFrontCam":Z
    .end local v4    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isFrontCam":Z
    goto/16 :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 478
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 462
    :goto_0
    return-void

    .line 468
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TutorialUI;->hideTutorialUIContainer(Z)V

    .line 470
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - MSG_HIDE_TUTORIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TutorialUI;->doZoomAnimation()V

    .line 475
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - MSG_SHOW_ZOOM_ANIMATION"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0xc351
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 454
    return-void
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    .line 571
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 574
    const-class v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TutorialUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 578
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/TutorialUI$18;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/TutorialUI$18;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 593
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/TutorialUI$19;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/TutorialUI$19;-><init>(Lcom/oneplus/camera/ui/TutorialUI;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 606
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_SelfTimerStartedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 607
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CameraActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 610
    const v5, 0x7f0a002e

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_TutorialUIContainer:Landroid/view/ViewGroup;

    .line 613
    const-class v5, Lcom/oneplus/camera/ZoomBar;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ZoomBar;

    .line 614
    .local v4, "zoomBar":Lcom/oneplus/camera/ZoomBar;
    sget-object v5, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_CLICK:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueClickHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ZoomBar;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 615
    sget-object v5, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_DRAGED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueDragedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ZoomBar;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 616
    sget-object v5, Lcom/oneplus/camera/ZoomBar;->EVENT_ZOOM_VALUE_LONG_CLICK:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ZoomValueLongClickHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/ZoomBar;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 619
    const-class v5, Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/CaptureBar;

    iput-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

    .line 620
    iget-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureBar:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_CUSTOM_MODE_CLICK:Lcom/oneplus/base/EventKey;

    iget-object v7, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CustomModeClickHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/camera/ui/CaptureBar;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 623
    const-class v5, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 624
    .local v3, "manualModeUI":Lcom/oneplus/camera/manual/ManualModeUI;
    sget-object v5, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_MODE_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CustomModeSettingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v3, v5, v6}, Lcom/oneplus/camera/manual/ManualModeUI;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 627
    const-class v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 628
    iget-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->EVENT_SWIPE_TO_SWITCH_SIMPLE_CAPTURE_MODE:Lcom/oneplus/base/EventKey;

    iget-object v7, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_SwipeToSwitchSimpleCaptureModeHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 629
    iget-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v6, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CaptureModePanelChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 632
    const-class v5, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FocusController;

    .line 633
    .local v2, "focusController":Lcom/oneplus/camera/FocusController;
    sget-object v5, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_FocusControllerAFRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v5, v6}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 636
    const-class v5, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v5, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_ViewFinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 639
    const-class v5, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/TutorialUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery;

    .line 640
    .local v1, "cameraGallery":Lcom/oneplus/camera/ui/CameraGallery;
    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/TutorialUI;->m_CameraGalleryUIStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v5, v6}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 569
    return-void
.end method
