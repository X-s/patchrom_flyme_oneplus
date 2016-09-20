.class public Lcom/oneplus/camera/manual/ManualModeControllerBuilder;
.super Lcom/oneplus/camera/CameraThreadComponentBuilder;
.source "ManualModeControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 17
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/manual/ManualModeController;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v0
.end method
