.class final Lcom/oneplus/camera/slowmotion/SlowMotionUI;
.super Lcom/oneplus/camera/ModeUI;
.source "SlowMotionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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


# static fields
.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final PREVIEW_FPS:I = 0x78


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
.method static synthetic -get0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/base/HandleSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->onCaptureButtonsFound(Lcom/oneplus/camera/ui/CaptureButtons;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->onVideoCaptureStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 79
    const-string/jumbo v0, "Slow-motion UI"

    const-class v1, Lcom/oneplus/camera/slowmotion/SlowMotionController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 77
    return-void
.end method

.method private onCaptureButtonsFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->setCaptureButtonImages()V

    .line 84
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
    .line 202
    .local p1, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->startVideoCaptrueAnimation()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->start()V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->stopVideoCaptrueAnimation()V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->stop()V

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->reset()V

    goto :goto_0

    .line 204
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

    .line 240
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v1, :cond_0

    .line 241
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 243
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    if-nez v1, :cond_1

    .line 244
    new-instance v1, Lcom/oneplus/drawable/RotateAnimationDrawable;

    const v2, 0x7f020018

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    const/16 v4, 0x48

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/drawable/RotateAnimationDrawable;-><init>(Landroid/graphics/drawable/Drawable;FI)V

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgDrawable:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-nez v1, :cond_3

    .line 250
    new-instance v1, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIcon:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    .line 238
    :cond_4
    return-void
.end method


# virtual methods
.method protected onEnter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 101
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    return v4

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    return v4

    .line 109
    :cond_1
    new-instance v2, Lcom/oneplus/base/HandleSet;

    new-array v3, v4, [Lcom/oneplus/base/Handle;

    invoke-direct {v2, v3}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 112
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    if-nez v2, :cond_2

    .line 113
    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    invoke-direct {v2, v0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    iget-object v3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 116
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Fail to change resolution selector"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v4

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v2, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 125
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 128
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 131
    invoke-direct {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->setCaptureButtonImages()V

    .line 134
    const/4 v2, 0x1

    return v2
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_CaptureButtonIconHandle:Lcom/oneplus/base/Handle;

    .line 150
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 153
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 140
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 167
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$1;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 175
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 187
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$3;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 159
    return-void
.end method
