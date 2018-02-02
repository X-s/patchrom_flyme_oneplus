.class public final Lcom/oneplus/camera/scene/ClearShotBuilder;
.super Ljava/lang/Object;
.source "ClearShotBuilder.java"

# interfaces
.implements Lcom/oneplus/camera/scene/SceneBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createScene(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/scene/Scene;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/oneplus/camera/scene/ClearShot;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/scene/ClearShot;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
