.class Lcom/oneplus/camera/panorama/PanoramaUI$9;
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
    .line 818
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

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
    .line 821
    check-cast p3, Lcom/oneplus/camera/CaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/panorama/PanoramaUI$9;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 823
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get1(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/CaptureButtons;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get1(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/CaptureButtons;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f020012

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 828
    .local v0, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get0(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 829
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1, v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set0(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 831
    .end local v0    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get5(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get4(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/ui/OnScreenHint;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get5(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get11(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$9;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    const/4 v2, 0x2

    invoke-static {v1, v2, v5}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap7(Lcom/oneplus/camera/panorama/PanoramaUI;II)V

    .line 821
    :cond_2
    return-void
.end method
