.class final Lcom/oneplus/camera/ui/SceneToast;
.super Lcom/oneplus/camera/CameraComponent;
.source "SceneToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/SceneToast$1;
    }
.end annotation


# static fields
.field private static final DURATION_UPDATE_TOAST_DELAY:J = 0x96L


# instance fields
.field private m_IsAutoHdrSceneReady:Z

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_ToastDrawableId:I

.field private m_ToastHandle:Lcom/oneplus/base/Handle;

.field private final m_UpdateToastRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/SceneToast;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/SceneToast;->m_IsAutoHdrSceneReady:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/SceneToast;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/SceneToast;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast;->m_UpdateToastRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/SceneToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/SceneToast;->m_IsAutoHdrSceneReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/SceneToast;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastDrawableId:I

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/SceneToast;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/SceneToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SceneToast;->updateToast()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 57
    const-string/jumbo v0, "Scene toast"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 44
    new-instance v0, Lcom/oneplus/camera/ui/SceneToast$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/SceneToast$1;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/SceneToast;->m_UpdateToastRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method private updateToast()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_UpdateToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "drawableId":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v5, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 160
    .local v2, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "sceneId":Ljava/lang/String;
    const-string/jumbo v4, "HDR"

    if-ne v3, v4, :cond_1

    .line 162
    const v1, 0x7f02010d

    .line 171
    .end local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    .end local v3    # "sceneId":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastDrawableId:I

    if-ne v4, v1, :cond_3

    .line 172
    return-void

    .line 163
    .restart local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    .restart local v3    # "sceneId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "Auto-HDR"

    if-ne v3, v4, :cond_2

    instance-of v4, v2, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v4, :cond_2

    .line 165
    check-cast v2, Lcom/oneplus/camera/scene/AutoHdrScene;

    .end local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v4, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/camera/scene/AutoHdrScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const v1, 0x7f02010d

    goto :goto_0

    .line 168
    .restart local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    const-string/jumbo v4, "ClearShot"

    if-ne v3, v4, :cond_0

    .line 169
    const v1, 0x7f02010b

    goto :goto_0

    .line 175
    .end local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    .end local v3    # "sceneId":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_7

    .line 177
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v4, :cond_4

    .line 178
    const-class v4, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v4, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 183
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v4, v5, v0, v7}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Landroid/graphics/drawable/Drawable;I)Z

    .line 192
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iput v1, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastDrawableId:I

    .line 150
    return-void

    .line 185
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/16 v5, 0x11

    invoke-interface {v4, v0, v6, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 188
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateToast() - No OnScreenHint"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_7
    iget-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    goto :goto_1
.end method


# virtual methods
.method protected onInitialize()V
    .locals 10

    .prologue
    .line 67
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 70
    const-class v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 71
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    const-class v7, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 75
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v5, Lcom/oneplus/camera/ui/SceneToast$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/SceneToast$2;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    .line 83
    .local v5, "updateToastCallback":Lcom/oneplus/base/PropertyChangedCallback;
    new-instance v6, Lcom/oneplus/camera/ui/SceneToast$3;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/SceneToast$3;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    .line 92
    .local v6, "updateToastDelayedCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 93
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/SceneToast$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/SceneToast$4;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 107
    if-eqz v1, :cond_0

    .line 108
    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v7, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 109
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v7, :cond_1

    .line 110
    iget-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v8, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8, v6}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 113
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v7, :cond_3

    .line 115
    iget-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v8, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    .local v4, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 118
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/scene/Scene;

    .line 119
    .local v3, "scene":Lcom/oneplus/camera/scene/Scene;
    instance-of v7, v3, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v7, :cond_4

    .line 121
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_IsAutoHdrSceneReady:Z

    .line 122
    sget-object v7, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v7, v6}, Lcom/oneplus/camera/scene/Scene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 126
    .end local v3    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    iget-boolean v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_IsAutoHdrSceneReady:Z

    if-nez v7, :cond_3

    .line 128
    iget-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v8, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v9, Lcom/oneplus/camera/ui/SceneToast$5;

    invoke-direct {v9, p0, v6}, Lcom/oneplus/camera/ui/SceneToast$5;-><init>(Lcom/oneplus/camera/ui/SceneToast;Lcom/oneplus/base/PropertyChangedCallback;)V

    invoke-interface {v7, v8, v9}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 145
    .end local v2    # "i":I
    .end local v4    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SceneToast;->updateToast()V

    .line 64
    return-void

    .line 116
    .restart local v2    # "i":I
    .restart local v3    # "scene":Lcom/oneplus/camera/scene/Scene;
    .restart local v4    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
