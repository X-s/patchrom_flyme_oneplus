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

.field public static final FLAG_FROM_USER:I = 0x4

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

.field public static final PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Scene"

    const-class v2, Lcom/oneplus/camera/scene/Scene;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SceneUserSelected"

    const-class v2, Lcom/oneplus/camera/scene/Scene;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;

    .line 42
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Scenes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    .line 48
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "SceneAdded"

    const-class v2, Lcom/oneplus/camera/scene/SceneEventArgs;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "SceneRemoved"

    const-class v2, Lcom/oneplus/camera/scene/SceneEventArgs;

    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z
.end method

.method public abstract setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setScene(Lcom/oneplus/camera/scene/Scene;I)Z
.end method
