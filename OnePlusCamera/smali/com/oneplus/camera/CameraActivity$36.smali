.class Lcom/oneplus/camera/CameraActivity$36;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->startCameraPreview(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$OperationState:[I

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$cameraPreviewSessionID:I

.field final synthetic val$photoResolution:Lcom/oneplus/camera/media/Resolution;

.field final synthetic val$previewReceiver:Ljava/lang/Object;

.field final synthetic val$previewSize:Landroid/util/Size;

.field final synthetic val$targetResolution:Lcom/oneplus/camera/media/Resolution;

.field final synthetic val$videoResolution:Lcom/oneplus/camera/media/Resolution;


# direct methods
.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity$36;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity$36;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraActivity$36;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;ILcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$cameraPreviewSessionID"    # I
    .param p4, "val$photoResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p5, "val$videoResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p6, "val$previewSize"    # Landroid/util/Size;
    .param p7, "val$targetResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p8, "val$previewReceiver"    # Ljava/lang/Object;

    .prologue
    .line 5585
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    iput p3, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iput-object p4, p0, Lcom/oneplus/camera/CameraActivity$36;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p5, p0, Lcom/oneplus/camera/CameraActivity$36;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p6, p0, Lcom/oneplus/camera/CameraActivity$36;->val$previewSize:Landroid/util/Size;

    iput-object p7, p0, Lcom/oneplus/camera/CameraActivity$36;->val$targetResolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p8, p0, Lcom/oneplus/camera/CameraActivity$36;->val$previewReceiver:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, -0xa

    const/16 v8, -0xb

    const/4 v7, 0x0

    .line 5591
    const/4 v6, 0x0

    .line 5592
    .local v6, "waitForStart":Z
    invoke-static {}, Lcom/oneplus/camera/CameraActivity$36;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5603
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_SERVICE_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5606
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v0, :cond_1

    .line 5607
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5612
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v0, :cond_2

    .line 5613
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5618
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$previewSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$36;->val$targetResolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$36;->val$previewReceiver:Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5620
    invoke-static {}, Lcom/oneplus/camera/CameraActivity$36;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 5630
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCameraPreview() - Fail to start camera preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5631
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v1, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v0, v9, v1, v7, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 5645
    :goto_2
    if-eqz v6, :cond_0

    .line 5647
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCameraPreview() - Wait for camera preview start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5648
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraActivity$36$1;

    iget v3, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/camera/CameraActivity$36$1;-><init>(Lcom/oneplus/camera/CameraActivity$36;ILcom/oneplus/camera/Camera;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 5588
    :cond_0
    return-void

    .line 5595
    :pswitch_0
    const/4 v6, 0x1

    .line 5596
    goto :goto_2

    .line 5598
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v1, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v0, v8, v1, v7, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 5609
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCameraPreview() - No photo resolution to set"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5615
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCameraPreview() - No photo resolution to set"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5623
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v1, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v0, v8, v1, v7, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 5627
    :pswitch_3
    const/4 v6, 0x1

    .line 5628
    goto :goto_2

    .line 5637
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCameraPreview() - Fail to start camera preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5638
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$36;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v1, p0, Lcom/oneplus/camera/CameraActivity$36;->val$cameraPreviewSessionID:I

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$36;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v0, v9, v1, v7, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 5592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5620
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
