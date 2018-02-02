.class public Lcom/oneplus/camera/ui/LongMediaProcessingUI;
.super Lcom/oneplus/camera/UIComponent;
.source "LongMediaProcessingUI.java"


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final DURATION_PHOTO_SHOW_PROCESSING_DIALOG_DELAY:J = 0x3e8L

.field private static final DURATION_SHOW_VIDEO_DIALOG_MIN:J = 0xfaL

.field private static final DURATION_VIDEO_SHOW_PROCESSING_DIALOG_DELAY:J = 0x1f4L

.field private static final MSG_CLOSE_VIDEO_PROCESSING_DIALOG:I = 0x2716

.field private static final MSG_SHOW_PHOTO_PROCESSING_DIALOG:I = 0x2711

.field private static final MSG_SHOW_VIDEO_PROCESSING_DIALOG:I = 0x2712


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_LastTimeShowVideoDialog:J

.field private m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;


# direct methods
.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 0
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Lcom/oneplus/camera/VideoCaptureState;)V
    .locals 0
    .param p1, "captureState"    # Lcom/oneplus/camera/VideoCaptureState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onVideoCaptureStateChanged(Lcom/oneplus/camera/VideoCaptureState;)V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 48
    const-string/jumbo v0, "Long Media Processing UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 46
    return-void
.end method

.method private closeVideoProcessingDialog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    .line 55
    iget-object v2, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_LastTimeShowVideoDialog:J

    sub-long v0, v2, v4

    .line 60
    .local v0, "diffTime":J
    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeVideoProcessingDialog()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 v2, 0x2712

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 64
    iget-object v2, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 53
    :goto_0
    return-void

    .line 67
    :cond_1
    sub-long v2, v6, v0

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    const/16 v4, 0x2716

    invoke-static {p0, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0
.end method

.method private onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 2
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 159
    invoke-static {}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 181
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->showPhotoProcessingDialog()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutter() - Do not show long processing dialog for service mode."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVideoCaptureStateChanged(Lcom/oneplus/camera/VideoCaptureState;)V
    .locals 4
    .param p1, "captureState"    # Lcom/oneplus/camera/VideoCaptureState;

    .prologue
    const/16 v3, 0x2716

    const/16 v2, 0x2712

    .line 202
    invoke-static {}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 206
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v2, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 212
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 213
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPhotoProcessingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPhotoProcessingDialog() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_PhotoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 220
    return-void
.end method

.method private showVideoProcessingDialog()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 251
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v1, :cond_1

    .line 253
    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 254
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showVideoProcessingDialog() - No ProcessingDialog interface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showVideoProcessingDialog()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_LastTimeShowVideoDialog:J

    .line 264
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const v2, 0x7f0b0043

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_VideoProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 243
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :pswitch_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 73
    :goto_0
    return-void

    .line 78
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->closeVideoProcessingDialog()V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->showPhotoProcessingDialog()V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->showVideoProcessingDialog()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 104
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 108
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LongMediaProcessingUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI$1;-><init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 116
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LongMediaProcessingUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI$2;-><init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 124
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LongMediaProcessingUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI$3;-><init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/LongMediaProcessingUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI$4;-><init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 98
    return-void
.end method
