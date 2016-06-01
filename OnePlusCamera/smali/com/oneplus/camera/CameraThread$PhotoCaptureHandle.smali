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
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;I)V
    .locals 1
    .param p2, "frameCount"    # I

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;-><init>(Lcom/oneplus/camera/CameraThread;II)V

    .line 539
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraThread;II)V
    .locals 1
    .param p2, "frameCount"    # I
    .param p3, "flags"    # I

    .prologue
    .line 542
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 543
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/media/MediaType;)V

    .line 544
    iput p3, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    .line 545
    iput p2, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    .line 546
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->closeDirectly()V

    .line 551
    return-void
.end method

.method public isBurstPhotoCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 556
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
    .line 562
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    # invokes: Lcom/oneplus/camera/CameraThread;->stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraThread;->access$1300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    .line 563
    return-void
.end method
