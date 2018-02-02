.class public Lcom/oneplus/camera/FaceBeautyControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FaceBeautyControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FaceBeautyController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FaceBeautyControllerImpl$1;,
        Lcom/oneplus/camera/FaceBeautyControllerImpl$2;,
        Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final MSG_ON_FACE_BEAUTY_DEFAULT_VALUE_CHANGED:I = 0x2712

.field private static final MSG_ON_FACE_BEAUTY_VALUES_CHANGED:I = 0x2711


# instance fields
.field private m_ActivateStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_DisableHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field m_FaceBeautyDefaultValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m_FaceBeautyValuesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_IsActivated:Z

.field private m_IsStandaloneFaceBeautySupported:Z

.field private m_SceneLockHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/FaceBeautyControllerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_DisableHandles:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$LensFacing;->values()[Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/FaceBeautyControllerImpl;Z)V
    .locals 0
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onKeepLastCaptureSettingsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onMediaTypeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateSupportedState()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 81
    const-string/jumbo v0, "Face Beauty Controller"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_DisableHandles:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_Values:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$1;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_FaceBeautyValuesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 49
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$2;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_FaceBeautyDefaultValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 84
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 85
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 86
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 87
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 79
    return-void
.end method

.method private activate(Lcom/oneplus/camera/Camera;ZI)Z
    .locals 7
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "saveState"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 104
    sget-object v1, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activate() - Face beauty is not supported"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v6

    .line 109
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activate() - Face beauty is already enabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return v5

    .line 114
    :cond_1
    if-nez p1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activate() - Camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v6

    .line 121
    :cond_2
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    .line 123
    .local v0, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activate() - Lens facing: "

    const-string/jumbo v3, ", flags: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsStandaloneFaceBeautySupported:Z

    if-nez v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_SceneLockHandle:Lcom/oneplus/base/Handle;

    .line 132
    new-instance v1, Lcom/oneplus/camera/FaceBeautyControllerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$3;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 155
    :goto_0
    if-eqz p2, :cond_3

    .line 156
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    iput-boolean v5, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    .line 162
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValue()V

    .line 165
    sget-object v1, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    return v5

    .line 144
    :cond_4
    new-instance v1, Lcom/oneplus/camera/FaceBeautyControllerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$4;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private applyFaceBeautyValue(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 177
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyFaceBeautyValue() - No camera to apply"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x0

    return v1

    .line 184
    :cond_0
    new-instance v1, Lcom/oneplus/camera/FaceBeautyControllerImpl$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$5;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 194
    const/4 v1, 0x1

    return v1
.end method

.method private deactivate(Lcom/oneplus/camera/Camera;ZI)V
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "saveState"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 211
    iget-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    if-nez v1, :cond_0

    .line 212
    return-void

    .line 213
    :cond_0
    if-nez p1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deactivate() - Camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .line 220
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    .line 222
    .local v0, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deactivate() - Lens facing: "

    const-string/jumbo v3, ", flags: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    iget-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsStandaloneFaceBeautySupported:Z

    if-nez v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_SceneLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_SceneLockHandle:Lcom/oneplus/base/Handle;

    .line 231
    new-instance v1, Lcom/oneplus/camera/FaceBeautyControllerImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$6;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 254
    :goto_0
    if-eqz p2, :cond_2

    .line 255
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    sget-object v1, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 261
    iput-boolean v5, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    .line 264
    sget-object v1, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    return-void

    .line 243
    :cond_3
    new-instance v1, Lcom/oneplus/camera/FaceBeautyControllerImpl$7;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$7;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isSupported(Lcom/oneplus/camera/Camera;)Z
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v3, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 324
    return v3

    .line 325
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    .line 326
    .local v0, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-static {}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 336
    return v3

    .line 330
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsStandaloneFaceBeautySupported:Z

    .line 331
    iget-boolean v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsStandaloneFaceBeautySupported:Z

    if-nez v1, :cond_1

    .line 332
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 333
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isSupported(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 2
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 344
    invoke-static {}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    const/4 v0, 0x0

    return v0

    .line 347
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->isSupported(Lcom/oneplus/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl$8;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 372
    invoke-direct {p0, p1, v1, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->deactivate(Lcom/oneplus/camera/Camera;ZI)V

    .line 376
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->isSupported(Lcom/oneplus/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p2, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateSupportedState()V

    .line 399
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateActivateState()V

    .line 402
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValueList()V

    .line 405
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValue()V

    .line 355
    return-void
.end method

.method private onFaceBeautyDefaultValueChanged()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValue()V

    .line 410
    return-void
.end method

.method private onFaceBeautyValuesChanged()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValueList()V

    .line 417
    return-void
.end method

.method private onKeepLastCaptureSettingsChanged(Z)V
    .locals 10
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 484
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 485
    .local v3, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "camera$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 488
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$LensFacing;

    .line 489
    .local v4, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 492
    .local v5, "value":I
    iget-object v6, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v6, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_Values:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v6, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onKeepLastCaptureSettingsChanged() - Reset face beauty: "

    const-string/jumbo v8, ", value: "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v7, v4, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 478
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "camera$iterator":Ljava/util/Iterator;
    .end local v2    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    .end local v3    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v4    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .end local v5    # "value":I
    :cond_0
    return-void
.end method

.method private onMediaTypeChanged()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateSupportedState()V

    .line 508
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateActivateState()V

    .line 511
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValueList()V

    .line 514
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValue()V

    .line 502
    return-void
.end method

.method private setValueProp(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 532
    iget-boolean v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    if-nez v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setValueProp() - Face beauty is not activated"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return v4

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 538
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 539
    return v4

    .line 542
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->applyFaceBeautyValue(I)Z

    .line 545
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    .line 546
    .local v1, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_Values:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v2, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private updateActivateState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 558
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 559
    return-void

    .line 560
    :cond_0
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    .line 564
    .local v3, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    sget-object v4, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 565
    .local v2, "isSupported":Z
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    iget-object v4, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_ActivateStatus:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 570
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateActivateState() - Lens facing: "

    const-string/jumbo v6, ", activate: "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v5, v3, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    if-eqz v1, :cond_2

    .line 574
    invoke-direct {p0, v0, v8, v8}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->activate(Lcom/oneplus/camera/Camera;ZI)Z

    .line 554
    :goto_1
    return-void

    .line 568
    :cond_1
    const/4 v1, 0x0

    .local v1, "isActivated":Z
    goto :goto_0

    .line 576
    .end local v1    # "isActivated":Z
    :cond_2
    invoke-direct {p0, v0, v8, v8}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->deactivate(Lcom/oneplus/camera/Camera;ZI)V

    goto :goto_1
.end method

.method private updateSupportedState()V
    .locals 6

    .prologue
    .line 584
    const/4 v1, 0x1

    .line 585
    .local v1, "isSupported":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 586
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->isSupported(Lcom/oneplus/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    const/4 v1, 0x0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    .line 591
    .local v2, "mediaType":Lcom/oneplus/camera/media/MediaType;
    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->isSupported(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_DisableHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 596
    const/4 v1, 0x0

    .line 598
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateSupportedState() - Is supported: "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    sget-object v3, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 581
    return-void

    .line 592
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateValue()V
    .locals 10

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v7

    .line 610
    .local v7, "camera":Lcom/oneplus/camera/Camera;
    if-nez v7, :cond_0

    .line 611
    return-void

    .line 612
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$LensFacing;

    .line 615
    .local v2, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_Values:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 616
    .local v4, "valueFromTable":Ljava/lang/Integer;
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 618
    .local v9, "valueFromCamera":I
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateValue() - Lens facing: "

    const-string/jumbo v3, ", value: "

    const-string/jumbo v5, ", camera: "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 622
    if-eqz v4, :cond_2

    .line 623
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 634
    .local v8, "value":I
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    if-eqz v0, :cond_1

    .line 637
    invoke-direct {p0, v8}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->applyFaceBeautyValue(I)Z

    .line 640
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 606
    :cond_1
    return-void

    .line 627
    .end local v8    # "value":I
    :cond_2
    move v8, v9

    .line 630
    .restart local v8    # "value":I
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_Values:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateValueList()V
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 650
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 651
    return-void

    .line 654
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 656
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateValueList() - Face beauty values: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    sget-object v2, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 646
    return-void
.end method


# virtual methods
.method public activate(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->activate(Lcom/oneplus/camera/Camera;ZI)Z

    move-result v0

    return v0
.end method

.method public deactivate(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->deactivate(Lcom/oneplus/camera/Camera;ZI)V

    .line 200
    return-void
.end method

.method public disable(I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 273
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    .line 274
    .local v0, "handle":Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_DisableHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateSupportedState()V

    .line 280
    return-object v0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 290
    iget-boolean v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsActivated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 292
    iget-boolean v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_IsStandaloneFaceBeautySupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 299
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onFaceBeautyDefaultValueChanged()V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onFaceBeautyValuesChanged()V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 428
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 431
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 434
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 435
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/FaceBeautyControllerImpl$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$10;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 443
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/FaceBeautyControllerImpl$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$11;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 451
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/FaceBeautyControllerImpl$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl$12;-><init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 461
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->onKeepLastCaptureSettingsChanged(Z)V

    .line 464
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateSupportedState()V

    .line 467
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateActivateState()V

    .line 470
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValueList()V

    .line 473
    invoke-direct {p0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->updateValue()V

    .line 425
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 523
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->setValueProp(I)Z

    move-result v0

    return v0

    .line 524
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
