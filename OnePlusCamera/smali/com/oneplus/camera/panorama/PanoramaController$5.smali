.class Lcom/oneplus/camera/panorama/PanoramaController$5;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaController;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera;>;"
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;
    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaController;->access$600(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;

    move-result-object v2

    # invokes: Lcom/oneplus/camera/panorama/PanoramaController;->restoreCameraParams(Lcom/oneplus/camera/Camera;)V
    invoke-static {v1, v2}, Lcom/oneplus/camera/panorama/PanoramaController;->access$700(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V

    .line 709
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # invokes: Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->access$800(Lcom/oneplus/camera/panorama/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    # setter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;
    invoke-static {v2, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->access$602(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)Lcom/oneplus/camera/Camera;

    .line 712
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;
    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaController;->access$600(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;

    move-result-object v2

    # invokes: Lcom/oneplus/camera/panorama/PanoramaController;->setupCameraParams(Lcom/oneplus/camera/Camera;)V
    invoke-static {v1, v2}, Lcom/oneplus/camera/panorama/PanoramaController;->access$900(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V

    .line 713
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->access$600(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 714
    .local v0, "previewSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->access$000(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$5;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->access$000(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 717
    .end local v0    # "previewSize":Landroid/util/Size;
    :cond_0
    return-void
.end method
