.class Lcom/oneplus/camera/panorama/PanoramaController$4;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 1032
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera;>;"
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->-get1(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->-wrap4(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V

    .line 1033
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-static {v1, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-set0(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)Lcom/oneplus/camera/Camera;

    .line 1036
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->-get1(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->-wrap5(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V

    .line 1037
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-get6(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->-get6(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaController;->-get4(Lcom/oneplus/camera/panorama/PanoramaController;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaController;->-get3(Lcom/oneplus/camera/panorama/PanoramaController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 1030
    :cond_0
    return-void
.end method
