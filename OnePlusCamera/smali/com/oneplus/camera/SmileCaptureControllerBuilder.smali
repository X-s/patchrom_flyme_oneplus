.class public final Lcom/oneplus/camera/SmileCaptureControllerBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "SmileCaptureControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 22
    new-instance v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
