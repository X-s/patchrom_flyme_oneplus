.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
    .line 911
    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 10
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
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 914
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    .line 915
    .local v2, "handle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 920
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    if-eqz v1, :cond_1

    .line 922
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v4

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BIIZZ)V

    .line 923
    .local v0, "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->run()V

    .line 911
    .end local v0    # "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    :cond_1
    return-void

    .line 916
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;>;"
    :cond_2
    return-void
.end method
