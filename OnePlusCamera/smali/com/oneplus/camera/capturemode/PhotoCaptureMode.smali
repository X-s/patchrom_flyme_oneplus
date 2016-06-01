.class public Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
.super Lcom/oneplus/camera/capturemode/SimpleCaptureMode;
.source "PhotoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;
    }
.end annotation


# static fields
.field private static final SETTINGS_KEY_SCENE_BACK:Ljava/lang/String; = "Scene.Back"

.field private static final SETTINGS_KEY_SCENE_FRONT:Ljava/lang/String; = "Scene.Front"


# instance fields
.field private final m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

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

.field private final m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSceneResetNeeded:Z

.field private final m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneId:Ljava/lang/String;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/camera/Settings;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "Scene.Back"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 122
    const-string v0, "Scene.Front"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 132
    const-string v0, "photo"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "Photo"

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 66
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 74
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 82
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 92
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    .line 100
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 108
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 147
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 150
    const-class v0, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    invoke-static {p1, v0, p1, v1}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onPrepareAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V

    return-void
.end method

.method private applyScene(Lcom/oneplus/camera/Camera;)V
    .locals 8
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 165
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v5, "applyScene() - No SceneManager interface"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Settings;

    .line 177
    .local v3, "settings":Lcom/oneplus/camera/Settings;
    iget-boolean v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    if-eqz v4, :cond_2

    .line 179
    const-string v4, "Scene.Back"

    invoke-virtual {v3, v4, v7}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v4, "Scene.Front"

    invoke-virtual {v3, v4, v7}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iput-boolean v6, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 183
    :cond_2
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v4, v5, :cond_4

    .line 184
    const-string v4, "Scene.Front"

    const-string v5, "Face Beauty (Photo)"

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    .line 187
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 190
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    goto :goto_0

    .line 186
    :cond_4
    const-string v4, "Scene.Back"

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    goto :goto_1

    .line 193
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 194
    .local v2, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 196
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 197
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 199
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    invoke-interface {v4, v1, v6}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyScene() - Fail to change scene to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private isRawCaptureEnabled()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 234
    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStateChanged() - isRawCaptureEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 251
    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 255
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 256
    return-void
.end method

.method private onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onPrepareAdvancedSettings(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 323
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string v2, "IsRawCaptureVisible"

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    :cond_0
    return-void

    .line 324
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onSceneAdded() - Change scene to "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneAdded() - Fail to change scene to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method private onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 369
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 373
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 374
    .local v1, "sceneId":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Settings;

    const-string v3, "Scene.Front"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    .end local v1    # "sceneId":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 377
    .restart local v1    # "sceneId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Settings;

    const-string v3, "Scene.Back"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 2
    .param p1, "sceneManager"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 386
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 387
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 392
    :cond_0
    return-void
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 402
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Already has raw processing dialog"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 221
    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEnter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p1, "x0"    # Lcom/oneplus/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 41
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "x0":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 4
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 268
    :cond_0
    new-instance v1, Lcom/oneplus/camera/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/oneplus/camera/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 271
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 282
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnter() - isRawCaptureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onExit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 41
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "x0":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    return-void
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onExit() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 306
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 338
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/camera/Settings;

    invoke-virtual {v0}, Lcom/oneplus/camera/Settings;->release()V

    .line 346
    :cond_1
    invoke-super {p0}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onRelease()V

    .line 347
    return-void
.end method
