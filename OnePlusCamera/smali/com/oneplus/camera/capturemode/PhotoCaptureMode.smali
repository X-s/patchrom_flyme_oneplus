.class public Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
.super Lcom/oneplus/camera/capturemode/SimpleCaptureMode;
.source "PhotoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I = null

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

.field private final m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSceneResetNeeded:Z

.field private final m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_WaitForSceneModeReady:Z


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p1, "oldState"    # Lcom/oneplus/camera/OperationState;
    .param p2, "newState"    # Lcom/oneplus/camera/OperationState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onCameraPreviewStateChanged(Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Z)V
    .locals 0
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onKeepLastCaptureSettingsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onPrepareAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 0
    .param p1, "sceneManager"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "Scene.Back"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "Scene.Front"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 129
    const-string/jumbo v0, "photo"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "Photo"

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 63
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 71
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 79
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 87
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 97
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    .line 105
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 144
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 145
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 148
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 150
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 153
    const-class v0, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    invoke-static {p1, v0, p1, v1}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 138
    return-void
.end method

.method private applyScene(Lcom/oneplus/camera/Camera;)V
    .locals 13
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v12, 0x0

    .line 169
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v8, :cond_0

    .line 171
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "applyScene() - No SceneManager interface"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 176
    :cond_0
    if-nez p1, :cond_1

    .line 178
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "applyScene() - No camera"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/OperationState;

    .line 184
    .local v4, "previewState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v8

    invoke-virtual {v4}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 193
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "applyScene() - Camera: "

    sget-object v10, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v10}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, ", preview: "

    invoke-static {v8, v9, v10, v11, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-boolean v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    if-eqz v8, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->resetToDefaultScene()V

    .line 201
    iput-boolean v12, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Settings;

    .line 206
    .local v7, "settings":Lcom/oneplus/base/Settings;
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v8, v9, :cond_6

    .line 207
    const-string/jumbo v8, "Scene.Front"

    invoke-virtual {v7, v8}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    .line 210
    :goto_0
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v8, :cond_5

    .line 213
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 215
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v9, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 216
    .local v6, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, "autoHdr":Lcom/oneplus/camera/scene/Scene;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 219
    .local v2, "iter":Lcom/oneplus/camera/scene/Scene;
    instance-of v8, v2, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v8, :cond_3

    .line 221
    move-object v0, v2

    .line 225
    .end local v0    # "autoHdr":Lcom/oneplus/camera/scene/Scene;
    .end local v2    # "iter":Lcom/oneplus/camera/scene/Scene;
    :cond_4
    if-eqz v0, :cond_7

    .line 226
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    invoke-interface {v8, v0, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 165
    .end local v3    # "iter$iterator":Ljava/util/Iterator;
    .end local v6    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_5
    :goto_1
    return-void

    .line 188
    .end local v7    # "settings":Lcom/oneplus/base/Settings;
    :pswitch_0
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "applyScene() - Preview stopped, wait for preview stating"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    .line 190
    return-void

    .line 209
    .restart local v7    # "settings":Lcom/oneplus/base/Settings;
    :cond_6
    const-string/jumbo v8, "Scene.Back"

    invoke-virtual {v7, v8}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    goto :goto_0

    .line 229
    .restart local v3    # "iter$iterator":Ljava/util/Iterator;
    .restart local v6    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_7
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v9, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v8, v9, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 230
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-nez v8, :cond_5

    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v8, v9, :cond_5

    .line 231
    const-string/jumbo v8, "Auto-HDR"

    iput-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    goto :goto_1

    .line 234
    .end local v3    # "iter$iterator":Ljava/util/Iterator;
    .end local v6    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_8
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 236
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v9, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v8, v9, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    goto :goto_1

    .line 240
    :cond_9
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v9, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 241
    .restart local v6    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 243
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/scene/Scene;

    .line 244
    .local v5, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v8, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v8}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 246
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    invoke-interface {v8, v5, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 247
    iget-object v8, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "applyScene() - Fail to change scene to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isRawCaptureEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "RawCapture"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 289
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityStateChanged() - isRawCaptureEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    goto :goto_0

    .line 289
    nop

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
    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 307
    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 310
    invoke-direct {p0, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 300
    :cond_0
    return-void
.end method

.method private onCameraPreviewStateChanged(Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 1
    .param p1, "oldState"    # Lcom/oneplus/camera/OperationState;
    .param p2, "newState"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 318
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    .line 316
    :cond_0
    return-void
.end method

.method private onKeepLastCaptureSettingsChanged(Z)V
    .locals 1
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 378
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 373
    :cond_0
    return-void
.end method

.method private onPrepareAdvancedSettings(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 388
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 390
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const-string/jumbo v3, "IsRawCaptureVisible"

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string/jumbo v1, "IsSmileCaptureVisible"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 391
    goto :goto_0
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 427
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

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSceneAdded() - Change scene to "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneAdded() - Fail to change scene to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method private onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    return-void

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 443
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 444
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSceneChanged() - Ignore when switching camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void

    .line 452
    :cond_2
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "sceneId":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Scene.Front"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    iput-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    .line 437
    :cond_3
    return-void

    .line 452
    .end local v1    # "sceneId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ""

    .restart local v1    # "sceneId":Ljava/lang/String;
    goto :goto_0

    .line 456
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Scene.Back"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 2
    .param p1, "sceneManager"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 469
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 470
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 473
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 465
    :cond_0
    return-void
.end method

.method private resetToDefaultScene()V
    .locals 4

    .prologue
    .line 481
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetToDefaultScene() - Reset to default scene"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    .line 483
    .local v1, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v2, "Scene.Back"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "sceneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    sget-object v3, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string/jumbo v2, "Scene.Back"

    const-string/jumbo v3, "Auto-HDR"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 268
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 5
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 331
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x0

    return v1

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 336
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    .line 339
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 342
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 345
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 348
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnter() - isRawCaptureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 352
    return v4
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 363
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 364
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onExit() - reset raw capture property"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 358
    return-void
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 405
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 406
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 409
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 412
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v1}, Lcom/oneplus/base/Settings;->release()V

    .line 420
    :cond_1
    invoke-super {p0}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onRelease()V

    .line 401
    return-void
.end method
