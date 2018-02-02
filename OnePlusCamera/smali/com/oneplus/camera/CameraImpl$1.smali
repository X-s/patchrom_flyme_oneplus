.class Lcom/oneplus/camera/CameraImpl$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->-wrap3(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 105
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->-wrap4(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 100
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->-wrap5(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 94
    return-void
.end method
