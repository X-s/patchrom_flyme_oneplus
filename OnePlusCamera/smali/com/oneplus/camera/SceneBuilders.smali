.class Lcom/oneplus/camera/SceneBuilders;
.super Ljava/lang/Object;
.source "SceneBuilders.java"


# static fields
.field static final BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/scene/SceneBuilder;

    .line 11
    new-instance v1, Lcom/oneplus/camera/scene/AutoHdrSceneBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/scene/AutoHdrSceneBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 12
    new-instance v1, Lcom/oneplus/camera/scene/HdrSceneBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/scene/HdrSceneBuilder;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    new-instance v1, Lcom/oneplus/camera/scene/ClearShotBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/scene/ClearShotBuilder;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 10
    sput-object v0, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
