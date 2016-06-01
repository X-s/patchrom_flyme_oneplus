.class public interface abstract Lcom/oneplus/camera/scene/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_LOCK_SCENE:I = 0x2

.field public static final FLAG_PRESERVE_CURRENT_SCENE:I = 0x1

.field public static final PROP_SCENE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCENES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Scene"

    const-class v2, Lcom/oneplus/camera/scene/Scene;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    .line 34
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Scenes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    .line 40
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "SceneAdded"

    const-class v2, Lcom/oneplus/camera/scene/SceneEventArgs;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    .line 44
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "SceneRemoved"

    const-class v2, Lcom/oneplus/camera/scene/SceneEventArgs;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z
.end method

.method public abstract setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setScene(Lcom/oneplus/camera/scene/Scene;I)Z
.end method
