.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->run()V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$previewBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;Landroid/graphics/RectF;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;
    .param p2, "val$previewBounds"    # Landroid/graphics/RectF;
    .param p3, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->val$previewBounds:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 304
    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 8
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
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 306
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v0, v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preparePreviewCover() - Preview frame received"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v6

    .line 308
    .local v6, "previewPlanes":[Lcom/oneplus/camera/media/ImagePlane;
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    .line 310
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 311
    .local v4, "nv21":[B
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    .line 312
    .local v2, "previewSize":Landroid/util/Size;
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v0, v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->val$previewBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->val$camera:Lcom/oneplus/camera/Camera;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;Landroid/util/Size;Landroid/graphics/RectF;[BLcom/oneplus/camera/Camera;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    .end local v2    # "previewSize":Landroid/util/Size;
    .end local v4    # "nv21":[B
    :goto_0
    invoke-interface {p1, p2, p0}, Lcom/oneplus/base/EventSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 304
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v0, v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preparePreviewCover() - Invalid preview frame data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v0, v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v7

    const/4 v3, 0x1

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->val$previewBounds:Landroid/graphics/RectF;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/16 v3, 0x2711

    invoke-static {v0, v3, v7, v7, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
