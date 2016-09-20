.class final Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
.super Lcom/oneplus/camera/CaptureHandle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCaptureHandle"
.end annotation


# instance fields
.field public camcorderProfile:Landroid/media/CamcorderProfile;

.field public captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

.field public final params:Lcom/oneplus/camera/CameraThread$VideoParams;

.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoParams;)V
    .locals 1
    .param p2, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 573
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/media/MediaType;)V

    .line 574
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->params:Lcom/oneplus/camera/CameraThread$VideoParams;

    .line 575
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->closeDirectly()V

    .line 580
    return-void
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    # invokes: Lcom/oneplus/camera/CameraThread;->stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/camera/CameraThread;->access$1400(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 586
    return-void
.end method
