.class Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->run()V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

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

    .line 452
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraThread;->getLastCapturedJpeg()[B

    move-result-object v0

    .line 455
    .local v0, "jpeg":[B
    if-eqz v0, :cond_1

    .line 456
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v2, 0x4e21

    invoke-static {v1, v2, v3, v3, v0}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;)Z

    .line 460
    .end local v0    # "jpeg":[B
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v0    # "jpeg":[B
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    # getter for: Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->access$600(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No JPEG after capturing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
