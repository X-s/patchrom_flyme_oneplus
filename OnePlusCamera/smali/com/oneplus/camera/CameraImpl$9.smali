.class Lcom/oneplus/camera/CameraImpl$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z
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
    .line 909
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$9;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 913
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$9;->this$0:Lcom/oneplus/camera/CameraImpl;

    # getter for: Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/CameraImpl;->access$1500(Lcom/oneplus/camera/CameraImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "captureInternal() - Pre-capture flash capture complete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$9;->this$0:Lcom/oneplus/camera/CameraImpl;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraImpl;->access$1602(Lcom/oneplus/camera/CameraImpl;Z)Z

    .line 915
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$9;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V
    invoke-static {v0}, Lcom/oneplus/camera/CameraImpl;->access$1700(Lcom/oneplus/camera/CameraImpl;)V

    .line 916
    return-void
.end method
