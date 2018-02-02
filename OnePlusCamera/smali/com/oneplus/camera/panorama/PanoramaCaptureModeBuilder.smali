.class public Lcom/oneplus/camera/panorama/PanoramaCaptureModeBuilder;
.super Ljava/lang/Object;
.source "PanoramaCaptureModeBuilder.java"

# interfaces
.implements Lcom/oneplus/camera/capturemode/CaptureModeBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCaptureMode(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/capturemode/CaptureMode;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
