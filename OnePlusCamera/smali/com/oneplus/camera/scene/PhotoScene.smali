.class public abstract Lcom/oneplus/camera/scene/PhotoScene;
.super Lcom/oneplus/camera/scene/BasicScene;
.source "PhotoScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/PhotoScene$3;,
        Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;
    }
.end annotation


# static fields
.field protected static final FLAG_DISABLE_BURST_CAPTURE:I = 0x4

.field protected static final FLAG_DISABLE_FLASH:I = 0x1

.field protected static final FLAG_DISABLE_SELF_TIMER:I = 0x8

.field protected static final FLAG_LOCK_FOCUS_BEFORE_CAPTURE:I = 0x10

.field protected static final FLAG_LONG_CAPTURE_TIME:I = 0x2


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

.field private m_FastStsDisableHandle:Lcom/oneplus/base/Handle;

.field private final m_Flags:I

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_SceneMode:Ljava/lang/Integer;

.field private m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

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
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sceneMode"    # I
    .param p4, "flags"    # I

    .prologue
    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 128
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

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/scene/BasicScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 136
    iput-object p3, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    .line 137
    iput p4, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    .line 140
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoScene$1;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 150
    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoScene$2;-><init>(Lcom/oneplus/camera/scene/PhotoScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 158
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 159
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 164
    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/camera/scene/PhotoScene;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/scene/PhotoScene;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/PhotoScene;
    .param p1, "x1"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/scene/PhotoScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/PhotoScene;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oneplus/camera/scene/PhotoScene;->onShutter()V

    return-void
.end method

.method private onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 2
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 326
    sget-object v0, Lcom/oneplus/camera/scene/PhotoScene$3;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onShutter()V
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/oneplus/camera/scene/PhotoScene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/PhotoScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 363
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/BasicScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - Fail to reset scene mode asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iput-object p1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 186
    :cond_1
    if-eqz p1, :cond_3

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    .line 194
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

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - Fail to set scene mode asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0
.end method

.method protected bridge synthetic onEnter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p1, "x0"    # Lcom/oneplus/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 27
    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "x0":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onEnter(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 6
    .param p1, "prevScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    .line 254
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - No camera to enter scene"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 216
    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    new-instance v3, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    iget-object v5, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 223
    goto :goto_0

    .line 227
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v3, Lcom/oneplus/camera/FlashController;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController;

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v0, v3, v2}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    .line 238
    :cond_4
    :goto_1
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    .line 242
    :cond_5
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableFastShotToShot()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FastStsDisableHandle:Lcom/oneplus/base/Handle;

    .line 246
    :cond_6
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 247
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableSelfTimer()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    .line 250
    :cond_7
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    :cond_8
    move v0, v1

    .line 254
    goto/16 :goto_0

    .line 234
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v2, "onEnter() - No FlashController interface"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onExit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 27
    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "x0":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onExit(Lcom/oneplus/camera/scene/Scene;I)V

    return-void
.end method

.method protected onExit(Lcom/oneplus/camera/scene/Scene;I)V
    .locals 3
    .param p1, "nextScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v2, "onExit() - No camera to exit scene"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 275
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 276
    new-instance v1, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/oneplus/camera/scene/PhotoScene$SceneApplyRunnable;-><init>(Lcom/oneplus/camera/scene/PhotoScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->TAG:Ljava/lang/String;

    const-string v2, "onExit() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    .line 283
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_BurstDisableHandle:Lcom/oneplus/base/Handle;

    .line 286
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FastStsDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_FastStsDisableHandle:Lcom/oneplus/base/Handle;

    .line 289
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SelfTimerDisableHandle:Lcom/oneplus/base/Handle;

    .line 292
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_PreCaptureFocusLockReqHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/BasicScene;->onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V

    .line 304
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_SceneMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 309
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

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    .line 319
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :goto_0
    return-void

    .line 312
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0

    .line 315
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->enable()V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->disable()V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoScene;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 348
    :cond_1
    invoke-super {p0}, Lcom/oneplus/camera/scene/BasicScene;->onRelease()V

    .line 349
    return-void
.end method
