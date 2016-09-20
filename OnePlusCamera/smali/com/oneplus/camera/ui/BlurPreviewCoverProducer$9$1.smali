.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/CameraCaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 303
    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 9
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 307
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1000(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "preparePreviewCover() - Preview frame received"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    .line 309
    .local v1, "previewPlanes":[Lcom/oneplus/camera/media/ImagePlane;
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 311
    aget-object v3, v1, v8

    invoke-virtual {v3}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 312
    .local v0, "nv21":[B
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    .line 313
    .local v2, "previewSize":Landroid/util/Size;
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1600(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;[BLandroid/util/Size;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    .end local v0    # "nv21":[B
    .end local v2    # "previewSize":Landroid/util/Size;
    :goto_0
    invoke-interface {p1, p2, p0}, Lcom/oneplus/base/EventSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 373
    return-void

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1700(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "preparePreviewCover() - Invalid preview frame data"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/16 v4, 0x2711

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v8

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v7, v7, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v8, v8, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
