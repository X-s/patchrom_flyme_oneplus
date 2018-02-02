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


# static fields
.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$media$MediaType:[I

.field public volatile closeFlags:I

.field public creationTime:J

.field public final flags:I

.field public final frameCount:I

.field public internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p4, "captureRotation"    # Lcom/oneplus/base/Rotation;
    .param p5, "flags"    # I

    .prologue
    .line 622
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 624
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/media/MediaType;)V

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 627
    iput p5, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->flags:I

    .line 622
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p4, "captureRotation"    # Lcom/oneplus/base/Rotation;
    .param p5, "frameCount"    # I
    .param p6, "flags"    # I

    .prologue
    .line 615
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 617
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/oneplus/camera/CaptureHandle;-><init>(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/media/MediaType;)V

    .line 618
    iput p5, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 620
    iput p6, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->flags:I

    .line 615
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 632
    invoke-super {p0}, Lcom/oneplus/camera/CaptureHandle;->closeDirectly()V

    .line 630
    return-void
.end method

.method public getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;
    .locals 2

    .prologue
    .line 637
    iget v1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    sget-object v0, Lcom/oneplus/camera/CaptureTrigger;->HW_BUTTON:Lcom/oneplus/camera/CaptureTrigger;

    .line 638
    .local v0, "trigger":Lcom/oneplus/camera/CaptureTrigger;
    :goto_0
    return-object v0

    .line 637
    .end local v0    # "trigger":Lcom/oneplus/camera/CaptureTrigger;
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CaptureTrigger;->SW_BUTTON:Lcom/oneplus/camera/CaptureTrigger;

    goto :goto_0
.end method

.method public getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public isBurstPhotoCapture()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 644
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 650
    iput p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    .line 651
    invoke-static {}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 648
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->-wrap19(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 657
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, p0, v2, v2}, Lcom/oneplus/camera/CameraActivity;->-wrap20(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    goto :goto_0

    .line 651
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
    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 662
    return-void
.end method
