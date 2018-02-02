.class final Lcom/oneplus/camera/scene/SceneManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SceneManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/scene/SceneManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/SceneManagerImpl$1;,
        Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Mode$StateSwitchesValues:[I


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

.field private m_SceneUserSelected:Lcom/oneplus/camera/scene/Scene;

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
.method private static synthetic -getcom-oneplus-camera-Mode$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Mode$State;->values()[Lcom/oneplus/camera/Mode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneDisabled(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneReleased(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/scene/SceneManagerImpl;->restoreDefaultScene(Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 79
    const-string/jumbo v0, "Scene Manager"

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

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneBuilders:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/SceneManagerImpl$1;-><init>(Lcom/oneplus/camera/scene/SceneManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 80
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private createScene(Lcom/oneplus/camera/scene/SceneBuilder;)Z
    .locals 6
    .param p1, "builder"    # Lcom/oneplus/camera/scene/SceneBuilder;

    .prologue
    const/4 v5, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/oneplus/camera/scene/SceneBuilder;->createScene(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/scene/Scene;

    move-result-object v1

    .line 118
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    if-eqz v1, :cond_2

    .line 120
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "createScene() - Scene : "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/Scene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 122
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v2, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v3, v1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createScene() - Fail to create scene by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return v5

    .line 130
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createScene() - No scene created by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    return v5
.end method

.method private onSceneDisabled(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
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

    .line 171
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneDisabled() - Default scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneDisabled() - Scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' has been disabled when using, exit from this scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 183
    :cond_1
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 164
    :cond_2
    return-void
.end method

.method private onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V
    .locals 7
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 191
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 192
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 193
    return-void

    .line 194
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 196
    if-ge v2, v1, :cond_4

    .line 198
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    .line 199
    .local v0, "activeScene":Lcom/oneplus/camera/scene/Scene;
    if-ne v0, p1, :cond_1

    .line 200
    return-void

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v3, :cond_5

    .line 203
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
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

    .line 212
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSceneEnabled() - Default scene \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 215
    :cond_3
    sget-object v4, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v5, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 189
    return-void

    .line 208
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onSceneReleased(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
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

    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneReleased() - Default scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v0, p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneReleased() - Scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' has been released when using, exit from this scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 239
    :cond_1
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/scene/SceneEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/scene/SceneEventArgs;-><init>(Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/Scene;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 220
    :cond_3
    return-void
.end method

.method private refreshActiveScenes()V
    .locals 4

    .prologue
    .line 249
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 251
    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scenes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    .line 252
    .local v1, "scene":Lcom/oneplus/camera/scene/Scene;
    invoke-static {}, Lcom/oneplus/camera/scene/SceneManagerImpl;->-getcom-oneplus-camera-Mode$StateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v2}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 258
    invoke-direct {p0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->onSceneEnabled(Lcom/oneplus/camera/scene/Scene;)V

    .line 249
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 247
    .end local v1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_0
    return-void

    .line 252
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

    .line 269
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 270
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 271
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    if-eqz v0, :cond_3

    .line 278
    iget v1, p1, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

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

    if-nez v1, :cond_1

    .line 282
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    .line 283
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->refreshActiveScenes()V

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 291
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 266
    :cond_3
    return-void
.end method

.method private updateDefaultScene()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
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

    .line 406
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDefaultScene() - Default scene : "

    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDefaultScene() - Scene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not contained in active list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    iput-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    goto :goto_0

    .line 413
    :cond_2
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
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addBuilder() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v2

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addBuilder() - No builder to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v2

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->createScene(Lcom/oneplus/camera/scene/SceneBuilder;)Z

    .line 108
    const/4 v0, 0x1

    return v0
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
    .line 146
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    return-object v0

    .line 148
    :cond_0
    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneUserSelected:Lcom/oneplus/camera/scene/Scene;

    return-object v0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 156
    return-void
.end method

.method public setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 303
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    return-object v4

    .line 307
    :cond_0
    if-nez p1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDefaultScene() - No scene specified"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v4

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setDefaultScene() - Scene : "

    invoke-static {v3, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    new-instance v0, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;-><init>(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;I)V

    .line 317
    .local v0, "handle":Lcom/oneplus/camera/scene/SceneManagerImpl$DefaultSceneHandle;
    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultSceneHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    .line 321
    invoke-direct {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->updateDefaultScene()V

    .line 322
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v1, :cond_3

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 326
    :cond_3
    return-object v0

    :cond_4
    move v1, v2

    .line 320
    goto :goto_0
.end method

.method public setScene(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 7
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->verifyAccess()V

    .line 336
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/SceneManagerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return v5

    .line 343
    :cond_0
    if-nez p1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - No scene to change"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return v5

    .line 348
    :cond_1
    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_ActiveScenes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    if-ne v1, p1, :cond_4

    .line 354
    return v6

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScene() - Scene \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not contained in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return v5

    .line 356
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_IsSceneLocked:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_DefaultScene:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - SceneLocked is locked and target scene is not defaultScene"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v5

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - Exit from \'"

    iget-object v3, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const-string/jumbo v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v1, p1, v6}, Lcom/oneplus/camera/scene/Scene;->exit(Lcom/oneplus/camera/Mode;I)V

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - Enter to \'"

    const-string/jumbo v3, "\'"

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/oneplus/camera/scene/Scene;->enter(Lcom/oneplus/camera/Mode;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 380
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 381
    .local v0, "oldScene":Lcom/oneplus/camera/scene/Scene;
    iput-object p1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 382
    sget-object v1, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_7

    .line 387
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScene() - Change selected scene from user \'"

    const-string/jumbo v3, "\'"

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneUserSelected:Lcom/oneplus/camera/scene/Scene;

    .line 389
    iput-object p1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_SceneUserSelected:Lcom/oneplus/camera/scene/Scene;

    .line 390
    sget-object v1, Lcom/oneplus/camera/scene/SceneManagerImpl;->PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 394
    :cond_7
    return v6

    .line 373
    .end local v0    # "oldScene":Lcom/oneplus/camera/scene/Scene;
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScene() - Fail to enter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\', go back to previous scene"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/scene/SceneManagerImpl;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 375
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to change scene."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :catchall_0
    move-exception v1

    throw v1

    .line 376
    :cond_9
    return v5
.end method
