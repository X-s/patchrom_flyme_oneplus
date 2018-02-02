.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;->onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
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
        "Lcom/oneplus/camera/ui/CaptureButtonEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;

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
    .line 1119
    check-cast p3, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/ui/CaptureButtonEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/CaptureButtonEventArgs;",
            ">;",
            "Lcom/oneplus/camera/ui/CaptureButtonEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/ui/CaptureButtonEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 1119
    return-void
.end method
