.class public abstract Lcom/oneplus/camera/capturemode/SimpleCaptureMode;
.super Lcom/oneplus/camera/capturemode/BasicCaptureMode;
.source "SimpleCaptureMode.java"


# static fields
.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I


# instance fields
.field private final m_MediaType:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .param p4, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;)V

    .line 29
    if-nez p3, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No target media type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p3, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 23
    return-void
.end method


# virtual methods
.method public isSimpleCaptureMode()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onEnter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p1, "prevMode"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 37
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "prevMode":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 6
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 42
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 44
    invoke-static {}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 53
    const/4 v1, 0x0

    .line 64
    .local v1, "restartPreview":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnter() - Fail to change nedia type to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 67
    :cond_0
    return v5

    .line 48
    .end local v1    # "restartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Stop preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    .line 50
    .restart local v1    # "restartPreview":Z
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    goto :goto_0

    .line 58
    .end local v1    # "restartPreview":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "restartPreview":Z
    goto :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x1

    .line 75
    if-eqz v1, :cond_3

    .line 77
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnter() - Restart preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 71
    :cond_3
    return v2

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    if-eqz v1, :cond_4

    .line 77
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onEnter() - Restart preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 74
    :cond_4
    throw v2

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onExit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p1, "nextMode"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 86
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "nextMode":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    return-void
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 0
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 86
    return-void
.end method
