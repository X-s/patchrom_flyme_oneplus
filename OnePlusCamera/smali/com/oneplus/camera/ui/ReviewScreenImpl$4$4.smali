.class Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;
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


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

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
    .line 612
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 3
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
    .line 614
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_MEDIA_SAVE_FAILED - Current handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-set3(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z

    .line 618
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$4;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v1, 0x2716

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 612
    :cond_0
    return-void
.end method
