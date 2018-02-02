.class final Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;
.super Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;
.source "SlowMotionCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/oneplus/camera/slowmotion/SlowMotionUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I


# instance fields
.field private final m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->SWITCH_MODE_LARGE_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 6
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 33
    const-string/jumbo v2, "Slow-motion"

    const-string/jumbo v3, "slowmotion"

    const-class v4, Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/oneplus/camera/media/MediaType;)V

    .line 21
    new-instance v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$1;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 34
    sget-object v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->isEntered()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->setSpecialVideoMode(Lcom/oneplus/camera/Camera;Z)V

    .line 85
    return-void
.end method

.method private setSpecialVideoMode(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isSpecial"    # Z

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSpecialVideoMode() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpecialVideoMode() - isSpecial :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d004b

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 50
    invoke-static {}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 4
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 66
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->setSpecialVideoMode(Lcom/oneplus/camera/Camera;Z)V

    .line 69
    return v3
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 79
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->setSpecialVideoMode(Lcom/oneplus/camera/Camera;Z)V

    .line 74
    return-void
.end method
