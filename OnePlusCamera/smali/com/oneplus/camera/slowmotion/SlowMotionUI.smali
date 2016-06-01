.class final Lcom/oneplus/camera/slowmotion/SlowMotionUI;
.super Lcom/oneplus/camera/ModeUI;
.source "SlowMotionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/slowmotion/SlowMotionUI$4;,
        Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeUI",
        "<",
        "Lcom/oneplus/camera/slowmotion/SlowMotionController;",
        ">;"
    }
.end annotation


# instance fields
.field private m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

.field private m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

.field private m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 73
    const-string v0, "Slow-motion UI"

    const-class v1, Lcom/oneplus/camera/slowmotion/SlowMotionController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->onCaptureButtonsFound(Lcom/oneplus/camera/ui/CaptureButtons;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;
    .param p1, "x1"    # Lcom/oneplus/camera/media/ResolutionManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/base/HandleSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->onVideoCaptureStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method private onCaptureButtonsFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->setCaptureButtonImages()V

    .line 86
    :cond_0
    return-void
.end method

.method private onVideoCaptureStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v1, Lcom/oneplus/camera/slowmotion/SlowMotionUI$4;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p1}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->startVideoCaptrueAnimation()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->start()V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->stopVideoCaptrueAnimation()V

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->stop()V

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->reset()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCaptureButtonImages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 234
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 237
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-nez v1, :cond_2

    .line 238
    new-instance v1, Lcom/oneplus/drawable/RotateAnimationDrawable;

    const v2, 0x7f02000b

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    const/16 v4, 0x48

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/drawable/RotateAnimationDrawable;-><init>(Landroid/graphics/drawable/Drawable;FI)V

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-nez v1, :cond_4

    .line 244
    new-instance v1, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected onEnter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 95
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    new-instance v3, Lcom/oneplus/base/HandleSet;

    new-array v4, v2, [Lcom/oneplus/base/Handle;

    invoke-direct {v3, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 106
    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    if-nez v3, :cond_2

    .line 107
    new-instance v3, Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    invoke-direct {v3, v0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v3, :cond_4

    .line 109
    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    iget-object v4, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    invoke-interface {v3, v4, v2}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 110
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->TAG:Ljava/lang/String;

    const-string v4, "onEnter() - Fail to change resolution selector"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v2, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 119
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 122
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 125
    invoke-direct {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->setCaptureButtonImages()V

    .line 128
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    .line 144
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 147
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 148
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 158
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 161
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$1;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 169
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 181
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$3;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 189
    return-void
.end method
