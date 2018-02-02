.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$17$1;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;->onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;

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
    .line 1260
    check-cast p3, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/CaptureButtonEventArgs;)V

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
    .line 1262
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/ui/CaptureButtonEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$17;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)V

    .line 1260
    return-void
.end method
