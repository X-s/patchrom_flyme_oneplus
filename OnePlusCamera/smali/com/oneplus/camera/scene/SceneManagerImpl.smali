.class final Lcom/oneplus/camera/scene/SceneManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SceneManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/scene/SceneManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/SceneManagerImpl$2;,
        Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    }
.end annotation


# instance fields
.field private final m_ActiveScenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

.field private final m_DefaultSceneHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSceneLocked:Z

.field private m_Scene:Lcom/oneplus/camera/scene/Scene;

.field private final m_SceneBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/scene/SceneBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 78
    const-string v0, "Scene Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneBuilders:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/SceneManagerImpl$1;-><init>(Lcom/oneplus/camera/scene/SceneManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 79
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/SceneManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/scene/SceneManagerImpl;->restoreDefaultScene(Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/SceneManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneDisabled(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/SceneManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneReleased(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/scene/SceneManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method private createScene(Lcom/oneplus/camera/scene/SceneBuilder;)Z
    .locals 6
    .param p1, "builder"    # Lcom/oneplus/camera/scene/SceneBuilder;

    .prologue
    const/4 v2, 0x0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/oneplus/camera/scene/SceneBuilder;->createScene(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/scene/Scene;

    move-result-object v1

    .line 163
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    if-eqz v1, :cond_1

    .line 165
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "createScene() - Scene : "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    sget-object v3, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/camera/scene/Scene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 167
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v3, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-nez v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v3, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v4, v1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 173
    :cond_0
    const/4 v2, 0x1

    .line 181
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :goto_0
    return v2

    .line 175
    .restart local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createScene() - No scene created by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createScene() - Fail to create scene by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onSceneDisabled(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    iget-object v0, v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneDisabled() - Default scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneDisabled() - Scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has been disabled when using, exit from this scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 226
    :cond_1
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 228
    :cond_2
    return-void
.end method

.method private onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V
    .locals 7
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 234
    iget-boolean v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 237
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 239
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-gt v2, v1, :cond_2

    .line 241
    if-ge v2, v1, :cond_4

    .line 243
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    .line 244
    .local v0, "activeScene":Lcom/oneplus/camera/scene/Scene;
    if-eq v0, p1, :cond_0

    .line 246
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v3, :cond_5

    .line 248
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 255
    .end local v0    # "activeScene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    iget-object v4, v4, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v4, p1, :cond_3

    .line 257
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSceneEnabled() - Default scene \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 260
    :cond_3
    sget-object v4, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v5, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private onSceneReleased(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    iget-object v0, v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneReleased() - Default scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneReleased() - Scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has been released when using, exit from this scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 284
    :cond_1
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/Scene;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 288
    :cond_3
    return-void
.end method

.method private refreshActiveScenes()V
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 296
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 297
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v3, Lcom/oneplus/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v2}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 303
    invoke-direct {p0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V

    .line 294
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 307
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_0
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private restoreDefaultScene(Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 315
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 316
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    if-eqz v0, :cond_0

    .line 323
    iget v1, p1, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 325
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    iget v1, v1, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 327
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    .line 328
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->refreshActiveScenes()V

    .line 333
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 336
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    goto :goto_0
.end method

.method private updateDefaultScene()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    iget-object v0, v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    .line 426
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultScene() - Scene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not contained in active list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    .line 434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultScene() - Default scene : "

    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    return-void

    .line 433
    :cond_1
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    goto :goto_0
.end method


# virtual methods
.method public addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z
    .locals 3
    .param p1, "builder"    # Lcom/oneplus/camera/scene/SceneBuilder;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "addBuilder() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "addBuilder() - No builder to add"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->createScene(Lcom/oneplus/camera/scene/SceneBuilder;)Z

    .line 107
    const/4 v0, 0x1

    goto :goto_0
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
    .line 191
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 203
    return-void
.end method

.method public setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 117
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    if-nez p1, :cond_2

    .line 123
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "setDefaultScene() - No scene specified"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "setDefaultScene() - Scene : "

    invoke-static {v5, v6, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;-><init>(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;I)V

    .line 131
    .local v1, "handle":Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    iget-object v5, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_6

    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    .line 135
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 136
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v3, :cond_4

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 138
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultScene() - Lock scene to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 143
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    .line 144
    .local v0, "activeScene":Lcom/oneplus/camera/scene/Scene;
    if-eq v0, p1, :cond_5

    .line 146
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    sget-object v3, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v4, v0}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 141
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0    # "activeScene":Lcom/oneplus/camera/scene/Scene;
    .end local v2    # "i":I
    :cond_6
    move v3, v4

    .line 134
    goto :goto_1
.end method

.method public setScene(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 9
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setScene() - Component is not running"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 414
    :goto_0
    return v3

    .line 355
    :cond_0
    if-nez p1, :cond_1

    .line 357
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setScene() - No scene to change"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 358
    goto :goto_0

    .line 360
    :cond_1
    sget-object v3, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScene() - Scene \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not contained in list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v3, p1, :cond_3

    move v3, v5

    .line 366
    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 371
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 380
    const/4 v2, 0x0

    .line 385
    .local v2, "restartPreview":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "setScene() - Exit from \'"

    iget-object v7, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const-string v8, "\'"

    invoke-static {v3, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v3, p1, v5}, Lcom/oneplus/camera/scene/Scene;->exit(Lcom/oneplus/camera/Mode;I)V

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "setScene() - Enter to \'"

    const-string v7, "\'"

    invoke-static {v3, v6, p1, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    sget-object v3, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const/4 v6, 0x1

    invoke-interface {p1, v3, v6}, Lcom/oneplus/camera/scene/Scene;->enter(Lcom/oneplus/camera/Mode;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 395
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScene() - Fail to enter \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', go back to previous scene"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 397
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Fail to change scene."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 413
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setScene() - Restart preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    :cond_4
    throw v3

    .line 375
    .end local v2    # "restartPreview":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "setScene() - Stop preview to change scene"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview()V

    .line 377
    const/4 v2, 0x1

    .line 378
    .restart local v2    # "restartPreview":Z
    goto :goto_1

    .line 411
    :cond_5
    if-eqz v2, :cond_6

    .line 413
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setScene() - Restart preview"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    :cond_6
    move v3, v4

    goto/16 :goto_0

    .line 402
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 403
    .local v1, "oldScene":Lcom/oneplus/camera/scene/Scene;
    iput-object p1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 404
    sget-object v3, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    if-eqz v2, :cond_8

    .line 413
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "setScene() - Restart preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    :cond_8
    move v3, v5

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
