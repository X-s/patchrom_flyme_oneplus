.class public final Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;
.super Lcom/oneplus/camera/CameraThreadComponentBuilder;
.source "PanoramaControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
    .locals 1
    .param p1, "x0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaControllerBuilder;->create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraComponent;

    move-result-object v0

    return-object v0
.end method
