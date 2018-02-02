.class Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery$8$1;->run()V
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
.field final synthetic this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;

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
    .line 719
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 4
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
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    const/4 v3, 0x0

    .line 720
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get0(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EVENT_MEDIA_FILE_ADDED onEventReceived "

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get0(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_MEDIA_FILE_ADDED e.getThumbnail() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/16 v1, 0x3e9

    invoke-static {v0, v1, v3, v3, p3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 719
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;->this$2:Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get0(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no thumbnail error"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
