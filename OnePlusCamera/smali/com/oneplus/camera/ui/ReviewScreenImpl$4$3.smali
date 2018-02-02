.class Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/PhotoCaptureState;",
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
    .line 581
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

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
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/PhotoCaptureState;>;"
    const/4 v3, 0x0

    .line 586
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_1

    .line 588
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get2(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Postview is already received, use it for review screen."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->getLastCapturedJpeg()[B

    move-result-object v0

    .line 595
    .local v0, "jpeg":[B
    if-eqz v0, :cond_2

    .line 596
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v2, 0x4e21

    invoke-static {v1, v2, v3, v3, v0}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;)Z

    .line 584
    .end local v0    # "jpeg":[B
    :cond_1
    :goto_0
    return-void

    .line 598
    .restart local v0    # "jpeg":[B
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No JPEG after capturing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
