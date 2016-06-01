.class Lcom/oneplus/camera/CameraActivity$27;
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


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$cameraPreviewSessionID:I

.field final synthetic val$photoResolution:Lcom/oneplus/camera/media/Resolution;

.field final synthetic val$previewReceiver:Ljava/lang/Object;

.field final synthetic val$previewSize:Landroid/util/Size;

.field final synthetic val$videoResolution:Lcom/oneplus/camera/media/Resolution;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera;ILcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;Landroid/util/Size;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4757
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    iput p3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$cameraPreviewSessionID:I

    iput-object p4, p0, Lcom/oneplus/camera/CameraActivity$27;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p5, p0, Lcom/oneplus/camera/CameraActivity$27;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p6, p0, Lcom/oneplus/camera/CameraActivity$27;->val$previewSize:Landroid/util/Size;

    iput-object p7, p0, Lcom/oneplus/camera/CameraActivity$27;->val$previewReceiver:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, -0xa

    const/16 v7, -0xb

    const/4 v6, 0x0

    .line 4762
    const/4 v0, 0x0

    .line 4763
    .local v0, "waitForStart":Z
    sget-object v2, Lcom/oneplus/camera/CameraActivity$29;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4774
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v1, :cond_1

    .line 4775
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$photoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4780
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v1, :cond_2

    .line 4781
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$videoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4786
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$previewSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$27;->val$previewReceiver:Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4788
    sget-object v2, Lcom/oneplus/camera/CameraActivity$29;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 4798
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$3100(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startCameraPreview() - Fail to start camera preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4799
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$cameraPreviewSessionID:I

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v1, v8, v2, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 4813
    :goto_2
    if-eqz v0, :cond_0

    .line 4815
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$3300(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startCameraPreview() - Wait for camera preview start"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4816
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/CameraActivity$27$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraActivity$27$1;-><init>(Lcom/oneplus/camera/CameraActivity$27;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4831
    :cond_0
    return-void

    .line 4766
    :pswitch_1
    const/4 v0, 0x1

    .line 4767
    goto :goto_2

    .line 4769
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$cameraPreviewSessionID:I

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v1, v7, v2, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 4777
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$2900(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startCameraPreview() - No photo resolution to set"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4783
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$3000(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startCameraPreview() - No photo resolution to set"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4791
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$cameraPreviewSessionID:I

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v1, v7, v2, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 4795
    :pswitch_4
    const/4 v0, 0x1

    .line 4796
    goto :goto_2

    .line 4805
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$3200(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startCameraPreview() - Fail to start camera preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$27;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v2, p0, Lcom/oneplus/camera/CameraActivity$27;->val$cameraPreviewSessionID:I

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$27;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v1, v8, v2, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 4763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4788
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
