.class Lcom/oneplus/camera/panorama/PanoramaController$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
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
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

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
    .line 190
    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/panorama/PanoramaController$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 2
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
    .line 192
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-get2(Lcom/oneplus/camera/panorama/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-get5(Lcom/oneplus/camera/panorama/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0, p3}, Lcom/oneplus/camera/panorama/PanoramaController;->-wrap1(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-virtual {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0, p3}, Lcom/oneplus/camera/panorama/PanoramaController;->-wrap3(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    goto :goto_0
.end method
