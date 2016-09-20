.class Lcom/oneplus/camera/panorama/PanoramaController$4;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaController;

    # invokes: Lcom/oneplus/camera/panorama/PanoramaController;->onPreviewFrameBitmapAvailable()V
    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaController;->access$500(Lcom/oneplus/camera/panorama/PanoramaController;)V

    .line 168
    return-void
.end method
