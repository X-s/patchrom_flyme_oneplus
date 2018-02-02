.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;
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
        "Lcom/oneplus/camera/CaptureEventArgs;",
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
    .line 928
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
    .line 931
    check-cast p3, Lcom/oneplus/camera/CaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/CaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 934
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CaptureEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 935
    .local v0, "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    if-nez v0, :cond_0

    .line 936
    return-void

    .line 937
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->isVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 943
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 946
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;I)I

    .line 949
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    return-void

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
