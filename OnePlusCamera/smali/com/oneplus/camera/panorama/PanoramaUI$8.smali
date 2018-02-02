.class Lcom/oneplus/camera/panorama/PanoramaUI$8;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;->onInitialize()V
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
        "Lcom/oneplus/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

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
    .line 800
    check-cast p3, Lcom/oneplus/camera/CaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/panorama/PanoramaUI$8;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/CaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CaptureEventArgs;>;"
    const/4 v6, 0x0

    .line 802
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get1(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/CaptureButtons;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get1(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/CaptureButtons;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f020014

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 807
    .local v1, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get0(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 808
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set0(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 810
    .end local v1    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get5(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get4(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/OnScreenHint;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get5(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0d0062

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 814
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 815
    .local v0, "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get11(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/watermark/WatermarkUI;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 816
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$8;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get11(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/watermark/WatermarkUI;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/watermark/WatermarkUI;->excludeCapture(Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/base/Handle;

    .line 800
    .end local v0    # "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_2
    return-void
.end method
