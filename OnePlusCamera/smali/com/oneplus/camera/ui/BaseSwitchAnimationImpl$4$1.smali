.class Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;
.super Ljava/lang/Object;
.source "BaseSwitchAnimationImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->run()V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$previewBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;Lcom/oneplus/camera/Camera;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->val$previewBounds:Landroid/graphics/RectF;

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
    .line 573
    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
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
    .line 576
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v5, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {v4, v5, p0}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 579
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    sget-object v5, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_0

    .line 581
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->-get0(Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onEventReceived() - Invalid state"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void

    .line 585
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->-get0(Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onEventReceived() - Receive preview frame"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    const/16 v5, -0x2725

    invoke-static {v4, v5}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 591
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    .line 594
    .local v1, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 595
    .local v3, "width":I
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 596
    .local v0, "height":I
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v1, v2, v4

    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->val$previewBounds:Landroid/graphics/RectF;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 597
    .local v2, "objs":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4$1;->this$1:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    const/16 v5, -0x4e22

    invoke-static {v4, v5, v3, v0, v2}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;)Z

    .line 573
    return-void
.end method
