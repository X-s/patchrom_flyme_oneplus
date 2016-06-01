.class Lcom/oneplus/camera/CameraImpl$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$6;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$6;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    invoke-static {v0, p3}, Lcom/oneplus/camera/CameraImpl;->access$1200(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CaptureResult;)V

    .line 240
    return-void
.end method
