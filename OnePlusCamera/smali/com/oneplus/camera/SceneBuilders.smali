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

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/camera/scene/PhotoFaceBeautySceneBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautySceneBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/oneplus/camera/scene/HdrSceneBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/scene/HdrSceneBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/oneplus/camera/scene/ClearShotBuilder;

    invoke-direct {v2}, Lcom/oneplus/camera/scene/ClearShotBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
