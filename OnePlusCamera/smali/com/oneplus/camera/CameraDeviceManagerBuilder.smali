.class Lcom/oneplus/camera/CameraDeviceManagerBuilder;
.super Lcom/oneplus/camera/CameraThreadComponentBuilder;
.source "CameraDeviceManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/CameraDeviceManagerImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 233
    new-instance v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/CameraDeviceManagerImpl;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v0
.end method
