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

.method static synthetic -set1(Lcom/oneplus/camera/ui/SceneToast;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
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
    .line 58
    const-string/jumbo v0, "Scene toast"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 45
    new-instance v0, Lcom/oneplus/camera/ui/SceneToast$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/SceneToast$1;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/SceneToast;->m_UpdateToastRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method private updateToast()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/ui/SceneToast;->m_UpdateToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "drawableIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v6, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 159
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v5, Lcom/oneplus/camera/scene/Scene$ImageUsage;->TOAST_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-interface {v1, v5}, Lcom/oneplus/camera/scene/Scene;->getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    .end local v0    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_0
    if-eqz v0, :cond_4

    .line 164
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v5, :cond_1

    .line 165
    const-class v5, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v5, :cond_3

    .line 169
    new-instance v3, Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f0c003d

    invoke-direct {v3, v5, v0, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 170
    .local v3, "shadowIcon":Lcom/oneplus/camera/drawable/ShadowDrawable;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 171
    .local v4, "shadowRadius":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 172
    .local v2, "shadowDy":I
    add-int v5, v4, v2

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setPaddings(IIII)V

    .line 174
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v6, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v3, v7}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Landroid/graphics/drawable/Drawable;I)Z

    .line 150
    .end local v2    # "shadowDy":I
    .end local v3    # "shadowIcon":Lcom/oneplus/camera/drawable/ShadowDrawable;
    .end local v4    # "shadowRadius":I
    :goto_0
    return-void

    .line 177
    .restart local v2    # "shadowDy":I
    .restart local v3    # "shadowIcon":Lcom/oneplus/camera/drawable/ShadowDrawable;
    .restart local v4    # "shadowRadius":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/16 v6, 0x11

    invoke-interface {v5, v3, v7, v6}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 180
    .end local v2    # "shadowDy":I
    .end local v3    # "shadowIcon":Lcom/oneplus/camera/drawable/ShadowDrawable;
    .end local v4    # "shadowRadius":I
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateToast() - No OnScreenHint"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/SceneToast;->m_ToastHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected onInitialize()V
    .locals 10

    .prologue
    .line 68
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 71
    const-class v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 72
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    const-class v7, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/SceneToast;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v7, p0, Lcom/oneplus/camera/ui/SceneToast;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SceneToast;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 76
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v5, Lcom/oneplus/camera/ui/SceneToast$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/SceneToast$2;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    .line 84
    .local v5, "updateToastCallback":Lcom/oneplus/base/PropertyChangedCallback;
    new-instance v6, Lcom/oneplus/camera/ui/SceneToast$3;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/SceneToast$3;-><init>(Lcom/oneplus/camera/ui/SceneToast;)V

    .line 93
    .local v6, "updateToastDelayedCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 94
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

    .line 65
    return-void

    .line 116
    .restart local v2    # "i":I
    .restart local v3    # "scene":Lcom/oneplus/camera/scene/Scene;
    .restart local v4    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
