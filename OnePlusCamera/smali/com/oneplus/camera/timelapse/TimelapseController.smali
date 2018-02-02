.class final Lcom/oneplus/camera/timelapse/TimelapseController;
.super Lcom/oneplus/camera/ModeController;
.source "TimelapseController.java"

# interfaces
.implements Lcom/oneplus/camera/VideoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeController",
        "<",
        "Lcom/oneplus/camera/timelapse/TimelapseUI;",
        ">;",
        "Lcom/oneplus/camera/VideoCaptureHandler;"
    }
.end annotation


# static fields
.field static final SPEED_RATIO:F = 6.0f


# instance fields
.field private m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 64
    const-string/jumbo v0, "Time-lapse Controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeController;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    .line 78
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 70
    :cond_1
    return-void
.end method

.method protected onEnter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    return v3

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/oneplus/camera/CameraThread;->setVideoCaptureHandler(Lcom/oneplus/camera/VideoCaptureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 93
    iget-object v1, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEnter() - Fail to set capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v3

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 101
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    .line 102
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 105
    :cond_2
    return v4
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 118
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 119
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 111
    return-void
.end method

.method public prepareCamcorderProfile(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p3, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->isEntered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "prepareCamcorderProfile() - Not entered"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v5

    .line 139
    :cond_0
    iget-object v2, p3, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 140
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const/16 v3, 0x3f0

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 159
    .local v1, "profile":Landroid/media/CamcorderProfile;
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 160
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 161
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {p2, v4, v5}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 162
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 163
    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 167
    iget v3, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Rotation;

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v3

    sget-object v4, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v4

    sub-int v0, v3, v4

    .line 172
    .local v0, "orientation":I
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_1

    .line 173
    neg-int v0, v0

    .line 174
    :cond_1
    if-gez v0, :cond_2

    .line 175
    add-int/lit16 v0, v0, 0x168

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "prepareCamcorderProfile() - Orientation : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 180
    const/4 v3, 0x1

    return v3

    .line 142
    .end local v0    # "orientation":I
    .end local v1    # "profile":Landroid/media/CamcorderProfile;
    :cond_3
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    const/16 v3, 0x3ee

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .restart local v1    # "profile":Landroid/media/CamcorderProfile;
    goto :goto_0

    .line 144
    .end local v1    # "profile":Landroid/media/CamcorderProfile;
    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    const/16 v3, 0x3ed

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .restart local v1    # "profile":Landroid/media/CamcorderProfile;
    goto :goto_0

    .line 146
    .end local v1    # "profile":Landroid/media/CamcorderProfile;
    :cond_5
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->isMmsVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    const/16 v3, 0x3ea

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .restart local v1    # "profile":Landroid/media/CamcorderProfile;
    goto/16 :goto_0

    .line 150
    .end local v1    # "profile":Landroid/media/CamcorderProfile;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/timelapse/TimelapseController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareCamcorderProfile() - Unknown resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public saveVideo(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 2
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I

    .prologue
    .line 187
    if-nez p4, :cond_0

    .line 189
    new-instance v0, Lcom/oneplus/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oneplus/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 190
    .local v0, "saveTask":Lcom/oneplus/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 191
    const/4 v1, 0x1

    return v1

    .line 193
    .end local v0    # "saveTask":Lcom/oneplus/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
