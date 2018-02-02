.class final Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
.super Lcom/oneplus/camera/CaptureHandle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoCaptureHandle"
.end annotation


# instance fields
.field public captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

.field public final flags:I

.field public final frameCount:I

.field public isFastCaptureEnabled:Z

.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p4, "captureRotation"    # Lcom/oneplus/base/Rotation;
    .param p5, "frameCount"    # I
    .param p6, "flags"    # I

    .prologue
    .line 649
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 651
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/media/MediaType;)V

    .line 652
    iput p6, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    .line 653
    iput p5, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    .line 649
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->closeDirectly()V

    .line 656
    return-void
.end method

.method public isBurstPhotoCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 664
    iget v1, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraThread;->-wrap29(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    .line 668
    return-void
.end method
