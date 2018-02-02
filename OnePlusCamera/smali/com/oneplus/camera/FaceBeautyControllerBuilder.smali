.class public Lcom/oneplus/camera/FaceBeautyControllerBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "FaceBeautyControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/FaceBeautyControllerImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/camera/FaceBeautyControllerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/FaceBeautyControllerImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
