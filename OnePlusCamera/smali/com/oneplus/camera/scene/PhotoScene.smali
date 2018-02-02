.class public abstract Lcom/oneplus/camera/scene/PhotoScene;
.super Lcom/oneplus/camera/scene/BasicScene;
.source "PhotoScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final DURATION_SHOW_PROCESSING_DIALOG_DELAY:J = 0x190L

.field protected static final FLAG_DISABLE_BURST_CAPTURE:I = 0x4

.field protected static final FLAG_DISABLE_FLASH:I = 0x1

.field protected static final FLAG_DISABLE_SELF_TIMER:I = 0x8

.field protected static final FLAG_LOCK_FOCUS_BEFORE_CAPTURE:I = 0x10

.field protected static final FLAG_LONG_CAPTURE_TIME:I = 0x2

.field protected static final FLAG_SHOW_PROCESSING_DIALOG:I = 0x20


# instance fields
.field private m_BurstDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Camera:Lcom/oneplus/camera/Camera;

.field private final m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Flags:I

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_SceneMode:Ljava/lang/Integer;

.field private m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

.field private final m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

.field private final m_ShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/scene/PhotoScene;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/PhotoScene;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/PhotoScene;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x4

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/scene/PhotoScene;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/scene/PhotoScene;)Lcom/oneplus/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 0
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/scene/PhotoScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/scene/PhotoScene;->showProcessingDialog()V

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sceneMode"    # I
    .param p4, "flags"    # I

    .prologue
    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 137
    return-void
.end method

.method private constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sceneMode"    # Ljava/lang/Integer;
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/scene/BasicScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 148
    iput-object p3, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    .line 149
    iput p4, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    .line 152
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoScene$1;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 162
    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoScene$2;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 170
    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoScene$3;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    .line 178
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 179
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/scene/PhotoScene$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/scene/PhotoScene$4;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 191
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 144
    :goto_0
    return-void

    .line 195
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 196
    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 197
    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 2
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 365
    invoke-static {}, Lcom/oneplus/camera/scene/PhotoScene;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showProcessingDialog() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 411
    return-void
.end method


# virtual methods
.method protected checkSceneModeValid(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 206
    if-eqz p1, :cond_1

    .line 207
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/BasicScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iput-object p1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 232
    :cond_1
    if-eqz p1, :cond_5

    .line 233
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-eqz v0, :cond_5

    .line 234
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    :cond_2
    :goto_1
    return-void

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - Fail to reset scene mode asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - Fail to set scene mode asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_1
.end method

.method protected bridge synthetic onEnter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p1, "prevScene"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 251
    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "prevScene":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onEnter(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 6
    .param p1, "prevScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 255
    return v5

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 259
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - No camera to enter scene"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return v4

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    new-instance v1, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v4

    .line 273
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v0, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/FlashController;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController;

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_8

    .line 278
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v0, v1, v4}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    .line 284
    :cond_4
    :goto_0
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    .line 288
    :cond_5
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableSelfTimer()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    .line 292
    :cond_6
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    .line 296
    :cond_7
    return v5

    .line 280
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - No FlashController interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onExit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p1, "nextScene"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 302
    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "nextScene":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onExit(Lcom/oneplus/camera/scene/Scene;I)V

    return-void
.end method

.method protected onExit(Lcom/oneplus/camera/scene/Scene;I)V
    .locals 3
    .param p1, "nextScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-nez v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onExit() - No camera to exit scene"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 317
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    iput-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 318
    new-instance v1, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onExit() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    .line 325
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    .line 328
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    .line 331
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    .line 302
    return-void
.end method

.method protected onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/BasicScene;->onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V

    .line 343
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 348
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    .line 337
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :goto_0
    return-void

    .line 351
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0

    .line 354
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 389
    :cond_1
    invoke-super {p0}, Lcom/oneplus/camera/scene/BasicScene;->onRelease()V

    .line 380
    return-void
.end method

.method protected onShutter(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 397
    sget-object v1, Lcom/oneplus/camera/scene/PhotoScene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/scene/PhotoScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    return-void

    .line 401
    :cond_1
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 404
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 405
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 394
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    :cond_2
    return-void
.end method
