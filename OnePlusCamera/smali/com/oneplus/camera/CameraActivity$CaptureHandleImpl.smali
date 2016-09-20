.class final Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
.super Lcom/oneplus/camera/CaptureHandle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureHandleImpl"
.end annotation


# instance fields
.field public volatile closeFlags:I

.field public creationTime:J

.field public final frameCount:I

.field public internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 509
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/media/MediaType;)V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 512
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;I)V
    .locals 2
    .param p2, "frameCount"    # I

    .prologue
    .line 502
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 503
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/media/MediaType;)V

    .line 504
    iput p2, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 506
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 516
    invoke-super {p0}, Lcom/oneplus/camera/CaptureHandle;->closeDirectly()V

    .line 517
    return-void
.end method

.method public getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public isBurstPhotoCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 522
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 528
    iput p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    .line 529
    sget-object v0, Lcom/oneplus/camera/CameraActivity$29;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 538
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->stopPhotoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$100(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    invoke-static {v0, p0, v2, v2}, Lcom/oneplus/camera/CameraActivity;->access$200(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCreationTime()V
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 543
    return-void
.end method
