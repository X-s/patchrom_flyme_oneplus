.class final Lcom/oneplus/camera/slowmotion/SlowMotionController;
.super Lcom/oneplus/camera/ModeController;
.source "SlowMotionController.java"

# interfaces
.implements Lcom/oneplus/camera/VideoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/slowmotion/SlowMotionController$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeController",
        "<",
        "Lcom/oneplus/camera/slowmotion/SlowMotionUI;",
        ">;",
        "Lcom/oneplus/camera/VideoCaptureHandler;"
    }
.end annotation


# static fields
.field private static final PREVIEW_FPS_MAX:I = 0x78

.field private static final PREVIEW_FPS_MIN:I = 0x78

.field static final SPEED_RATIO:F = 0.25f


# instance fields
.field private m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_VideoSnapshotDisableHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 39
    const-string v0, "Slow-motion Controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/slowmotion/SlowMotionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->onVideoCaptureStopped()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/slowmotion/SlowMotionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/slowmotion/SlowMotionController;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->isEntered()Z

    move-result v0

    return v0
.end method

.method private onVideoCaptureStopped()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->isEntered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 152
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->TAG:Ljava/lang/String;

    const-string v2, "onVideoCaptureStopped() - No camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/16 v3, 0x78

    .line 212
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 221
    :cond_0
    return-void
.end method

.method protected onEnter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/16 v4, 0x78

    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    :goto_0
    return v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/oneplus/camera/CameraThread;->setVideoCaptureHandler(Lcom/oneplus/camera/VideoCaptureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 53
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->TAG:Ljava/lang/String;

    const-string v3, "onEnter() - Fail to set capture handler"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->disableVideoSnapshot()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_VideoSnapshotDisableHandle:Lcom/oneplus/base/Handle;

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 64
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 80
    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_VideoSnapshotDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->m_VideoSnapshotDisableHandle:Lcom/oneplus/base/Handle;

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 84
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 92
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/oneplus/camera/ModeController;->onInitialize()V

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 104
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController$1;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 123
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/slowmotion/SlowMotionController$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController$2;-><init>(Lcom/oneplus/camera/slowmotion/SlowMotionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 140
    return-void
.end method

.method public prepareCamcorderProfile(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p3, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->isEntered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->TAG:Ljava/lang/String;

    const-string v3, "prepareCamcorderProfile() - Not entered"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x0

    .line 203
    :goto_0
    return v2

    .line 175
    :cond_0
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 182
    .local v1, "profile":Landroid/media/CamcorderProfile;
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 183
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 184
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p2, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 185
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 186
    iget v2, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 190
    iget v2, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/camera/slowmotion/SlowMotionController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v2

    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v3

    sub-int v0, v2, v3

    .line 195
    .local v0, "orientation":I
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_1

    .line 196
    neg-int v0, v0

    .line 197
    :cond_1
    if-gez v0, :cond_2

    .line 198
    add-int/lit16 v0, v0, 0x168

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionController;->TAG:Ljava/lang/String;

    const-string v3, "prepareCamcorderProfile() - Orientation : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 203
    const/4 v2, 0x1

    goto :goto_0
.end method
