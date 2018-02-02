.class final Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;
.super Lcom/oneplus/camera/UIComponent;
.source "CameraSwtichAnimationIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I


# instance fields
.field private m_AnimationIcon:Landroid/widget/ImageView;

.field private m_AnimationIconContainer:Landroid/view/View;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_IsTriggeredByCameraSwitching:Z

.field private m_OldLensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_IsTriggeredByCameraSwitching:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_IsTriggeredByCameraSwitching:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/camera/Camera$LensFacing;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_OldLensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 46
    const-string/jumbo v0, "CameraSwitchAnimationIcon"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 33
    new-instance v0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;-><init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 44
    return-void
.end method

.method private onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 7
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    return-void

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_OldLensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/Camera$LensFacing;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->startIconAnimation(Landroid/widget/ImageView;)Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 150
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    const-wide/16 v4, 0xc8

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 154
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_IsTriggeredByCameraSwitching:Z

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startIconAnimation(Landroid/widget/ImageView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startIconAnimation() - View is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v4

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    .line 169
    return-object v4

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 173
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 176
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    mul-int v1, v2, v3

    .line 181
    .local v1, "durationMillies":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$5;-><init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;)V

    .line 189
    int-to-long v4, v1

    .line 181
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-object v0
.end method


# virtual methods
.method protected onInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 57
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 58
    const-class v1, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 62
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    .line 66
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 68
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIconContainer:Landroid/view/View;

    const v2, 0x7f0a0079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    .line 69
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_AnimationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->addAutoRotateView(Landroid/view/View;)V

    .line 73
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;-><init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 94
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;-><init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;-><init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 51
    :cond_2
    return-void
.end method
