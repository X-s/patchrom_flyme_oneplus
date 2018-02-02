.class public Lcom/oneplus/camera/watermark/OnlineWatermarkControllerBuilder;
.super Lcom/oneplus/camera/CameraThreadComponentBuilder;
.source "OnlineWatermarkControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v0
.end method
