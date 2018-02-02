.class final Lcom/oneplus/camera/ui/ZoomBarImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ZoomBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ZoomBarImpl$1;,
        Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;,
        Lcom/oneplus/camera/ui/ZoomBarImpl$ProgressDrawable;,
        Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;
    }
.end annotation


# static fields
.field private static final DURATION_HIDE_ZOOM_WHEEL:J = 0xc8L

.field private static final DURATION_SHOW_ZOOM_WHEEL:J = 0xc8L

.field private static final DURATION_ZOOM_WHEEL_VISIBLE:J = 0x3e8L

.field private static final MSG_HIDE_ZOOM_WHEEL:I = 0x2711

.field private static final THRESHOLD_DISTANCE_TO_OPEN_ZOOM_WHEEL:F = 100.0f

.field private static final ZOOM_STEP:I = 0x64


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_DropZoomBarTouchEvent:Z

.field private m_HideZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private m_IsWheelTouchDownSet:Z

.field private m_IsZoomValueVisible:Z

.field private m_IsZoomWheelVisible:Z

.field private m_LastTouchEvent:Landroid/view/MotionEvent;

.field private m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

.field private m_ShowZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final m_TouchDownPosition:Landroid/graphics/PointF;

.field private m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;

.field private m_ZoomValueContainer:Landroid/widget/RelativeLayout;

.field private m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

.field private m_ZoomValueText:Landroid/widget/TextView;

.field private m_ZoomWheel:Lcom/oneplus/widget/Wheel;

.field private final m_ZoomWheelCallback:Lcom/oneplus/widget/Wheel$Callback;

.field private m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

.field private m_ZoomWheelDrawable:Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

.field private m_zoomValueXText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_DropZoomBarTouchEvent:Z

    return v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelDrawable:Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomWheelVisible:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_LastTouchEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_TouchDownPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_DropZoomBarTouchEvent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_HideZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_LastTouchEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ShowZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->isZoomAdjustable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ZoomBarImpl;F)I
    .locals 1
    .param p1, "zoomValue"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->convertZoomValueFromDigitalToWheel(F)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ZoomBarImpl;IZ)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->onZoomWheelValueChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/ZoomBarImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->showZoomWheel()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/ZoomBarImpl;F)V
    .locals 0
    .param p1, "digitalZoom"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->updateValueText(F)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->updateZoomContainerVisibility()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 163
    const-string/jumbo v0, "Zoom Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_TouchDownPosition:Landroid/graphics/PointF;

    .line 134
    new-instance v0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$1;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelCallback:Lcom/oneplus/widget/Wheel$Callback;

    .line 161
    return-void
.end method

.method private convertZoomValueFromDigitalToWheel(F)I
    .locals 3
    .param p1, "zoomValue"    # F

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "wheelValue":I
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 203
    return v0
.end method

.method private convertZoomValueFromWheelToDigital(I)F
    .locals 4
    .param p1, "wheelValue"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    const/high16 v0, 0x3f800000    # 1.0f

    .line 210
    .local v0, "zoomValue":F
    int-to-float v1, p1

    mul-float/2addr v1, v3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float v0, v1, v3

    .line 214
    return v0
.end method

.method private hideZoomWheel(Z)V
    .locals 13
    .param p1, "animate"    # Z

    .prologue
    const v12, 0x7f0c0047

    const v11, 0x7f09011c

    const v10, 0x7f02031f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 718
    sget-object v1, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    return-void

    .line 722
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    if-eqz v1, :cond_1

    .line 723
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_DropZoomBarTouchEvent:Z

    .line 727
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    const-wide/16 v4, 0xc8

    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 728
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-object v4, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v1, v2, v4, p1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->collapse(FFZ)V

    .line 730
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 731
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ShowZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_3

    .line 736
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    const v2, 0x7f020336

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 737
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/camera/ui/ZoomBarImpl$20;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$20;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_HideZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 754
    :goto_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 763
    :goto_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 764
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_zoomValueXText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 765
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 766
    .local v7, "paddingTopSmall":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 767
    .local v0, "paddingStartEndSmall":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_zoomValueXText:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v7, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 769
    const/16 v1, 0x2711

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 716
    return-void

    .line 725
    .end local v0    # "paddingStartEndSmall":I
    .end local v7    # "paddingTopSmall":I
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    goto/16 :goto_0

    .line 727
    :cond_2
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    .line 751
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 758
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 759
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 761
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private isDualCamera()Z
    .locals 4

    .prologue
    .line 219
    const/4 v1, 0x1

    .line 221
    .local v1, "isDualCamera":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 222
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :cond_0
    return v1
.end method

.method private isZoomAdjustable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 232
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isZoomAdjustable() - Capture UI is disabled."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return v3

    .line 238
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 240
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isZoomAdjustable() - Capture state is not ready."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return v3

    .line 244
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private onZoomWheelValueChanged(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 774
    if-eqz p2, :cond_0

    .line 775
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v1, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->convertZoomValueFromWheelToDigital(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 777
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomWheelVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsWheelTouchDownSet:Z

    if-eqz v0, :cond_2

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 778
    :cond_2
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0
.end method

.method private setZoomValueVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 635
    :goto_0
    sget-object v0, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_VALUE_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 625
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private showZoomWheel()V
    .locals 10

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const v9, 0x7f0c0046

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 640
    sget-object v1, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    return-void

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 644
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget-object v6, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v1, v2, v6, v3}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->expand(FFZ)V

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_HideZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    const v2, 0x7f020337

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 651
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/camera/ui/ZoomBarImpl$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$18;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ShowZoomWheelAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 667
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 668
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 669
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_zoomValueXText:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 670
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 671
    .local v7, "paddingTopLarge":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 672
    .local v0, "paddingStartEndLarge":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_zoomValueXText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v7, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 674
    const/16 v1, 0x2711

    const-wide/16 v4, 0x3e8

    invoke-static {p0, v1, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 638
    return-void

    .line 665
    .end local v0    # "paddingStartEndLarge":I
    .end local v7    # "paddingTopLarge":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    const v2, 0x7f020335

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 680
    if-nez p1, :cond_0

    .line 682
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startIconAnimation() - View is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-object v4

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    .line 687
    return-object v4

    .line 689
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 691
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 694
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 695
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 698
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    mul-int v1, v2, v3

    .line 699
    .local v1, "durationMillies":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$19;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/oneplus/camera/ui/ZoomBarImpl$19;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 710
    int-to-long v4, v1

    .line 699
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    return-object v0
.end method

.method private updateValueText(F)V
    .locals 5
    .param p1, "digitalZoom"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 783
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    const-string/jumbo v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateZoomContainerVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 797
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 800
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 801
    return-void

    .line 804
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 807
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 808
    return-void

    .line 811
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    .line 813
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 814
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 815
    return-void

    .line 819
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v1, :cond_3

    .line 820
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 819
    if-eqz v1, :cond_4

    .line 823
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 824
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 825
    return-void

    .line 828
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->isDualCamera()Z

    move-result v1

    if-nez v1, :cond_5

    .line 830
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 831
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 832
    return-void

    .line 835
    :cond_5
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 836
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    .line 793
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
    .line 171
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_VALUE_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomValueVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomWheelVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 175
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 181
    :goto_0
    return-void

    .line 186
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->hideZoomWheel(Z)V

    .line 187
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->setZoomValueVisibility(Z)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 255
    const-class v2, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ZoomController;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OPCameraActivity;

    .line 259
    .local v1, "cameraActivity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v2, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    const v3, 0x7f080054

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/OPCameraActivity;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    .line 260
    new-instance v2, Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelDrawable:Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

    .line 263
    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 264
    .local v0, "baseLayout":Landroid/view/View;
    const v2, 0x7f0a0133

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    .line 265
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0135

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    .line 266
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainerAnimationBackground:Landroid/widget/ImageView;

    const v3, 0x7f02031f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    const v2, 0x7f0a0134

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    .line 268
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_WheelContainerBackground:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0138

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/Wheel;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    .line 270
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/Wheel;->setCurrentValueIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelDrawable:Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/Wheel;->setWheelDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/Wheel;->setWheelLengthRatio(F)V

    .line 273
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0136

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    .line 274
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_zoomValueXText:Landroid/widget/TextView;

    .line 275
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 276
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$2;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$3;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 319
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$4;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheel:Lcom/oneplus/widget/Wheel;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomWheelCallback:Lcom/oneplus/widget/Wheel$Callback;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/Wheel;->addCallback(Lcom/oneplus/widget/Wheel$Callback;)V

    .line 467
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomValueText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 470
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$5;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 478
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$6;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 486
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$7;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 494
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$8;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$8;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 502
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$9;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$9;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 516
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ZoomBarImpl$10;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$10;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 529
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$11;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$11;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 540
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$12;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$12;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 548
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$13;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$13;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 556
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$14;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$14;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 569
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->updateValueText(F)V

    .line 571
    :cond_0
    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 572
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$15;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$15;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 582
    :cond_1
    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    .line 583
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_ManualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_KNOB_VIEW_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/ZoomBarImpl$16;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$16;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 595
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->updateZoomContainerVisibility()V

    .line 249
    return-void
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
    .line 601
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_VALUE_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 602
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomValueVisible:Z

    .line 606
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 603
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/ZoomBarImpl;->PROP_IS_ZOOM_WHEEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 604
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl;->m_IsZoomWheelVisible:Z

    goto :goto_0
.end method

.method public setZoomBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 613
    new-instance v0, Lcom/oneplus/camera/ui/ZoomBarImpl$17;

    const-string/jumbo v1, "Set Zoom Bar Visibility Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl$17;-><init>(Lcom/oneplus/camera/ui/ZoomBarImpl;Ljava/lang/String;)V

    .line 622
    .local v0, "handle":Lcom/oneplus/base/Handle;
    return-object v0
.end method
