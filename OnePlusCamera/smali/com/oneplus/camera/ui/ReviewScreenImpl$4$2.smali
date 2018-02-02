.class Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->run()V
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
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$4;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ReviewScreenImpl$4;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

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
    .line 548
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 10
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EVENT_MEDIA_SAVED - Current handle: "

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    const-string/jumbo v3, ", handle in media: "

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v1, 0x2716

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 558
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap12(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    .line 562
    :cond_0
    new-instance v9, Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/oneplus/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 563
    .local v9, "mediaInfo":Lcom/oneplus/camera/MediaInfo;
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v1, 0x2712

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 568
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-set2(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z

    .line 569
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 570
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get6(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/media/BitmapPool$Callback;

    move-result-object v6

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v2, 0x3

    const/16 v3, 0x780

    const/16 v4, 0x780

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 548
    .end local v9    # "mediaInfo":Lcom/oneplus/camera/MediaInfo;
    :cond_1
    :goto_0
    return-void

    .line 571
    .restart local v9    # "mediaInfo":Lcom/oneplus/camera/MediaInfo;
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 572
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v3, v3, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get6(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/media/BitmapPool$Callback;

    move-result-object v7

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v3, v3, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v3, 0x3

    const/16 v4, 0x780

    const/16 v5, 0x780

    const/4 v6, 0x3

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEventReceived - No path or uri to decode bitmap."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
