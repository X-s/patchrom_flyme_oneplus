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

.field public captureRealTime:J

.field public final flags:I

.field public final params:Lcom/oneplus/camera/CameraThread$VideoParams;

.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/CameraThread$VideoParams;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "captureRotation"    # Lcom/oneplus/base/Rotation;
    .param p4, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;
    .param p5, "flags"    # I

    .prologue
    .line 702
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 704
    iget-object v0, p4, Lcom/oneplus/camera/CameraThread$VideoParams;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/media/MediaType;)V

    .line 705
    iput-object p4, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->params:Lcom/oneplus/camera/CameraThread$VideoParams;

    .line 706
    iput p5, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->flags:I

    .line 702
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->closeDirectly()V

    .line 709
    return-void
.end method

.method public getCaptureRealTime()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureRealTime:J

    return-wide v0
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/camera/CameraThread;->-wrap34(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 721
    return-void
.end method
