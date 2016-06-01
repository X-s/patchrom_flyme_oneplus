.class Lcom/oneplus/camera/ui/PinchZoomingUI$2;
.super Ljava/lang/Object;
.source "PinchZoomingUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PinchZoomingUI;->onInitialize()V
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
        "Lcom/oneplus/camera/ui/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PinchZoomingUI;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$2;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 89
    check-cast p3, Lcom/oneplus/camera/ui/MotionEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/PinchZoomingUI$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/ui/MotionEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
            ">;",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/ui/MotionEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$2;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    # invokes: Lcom/oneplus/camera/ui/PinchZoomingUI;->onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V
    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$600(Lcom/oneplus/camera/ui/PinchZoomingUI;Lcom/oneplus/camera/ui/MotionEventArgs;)V

    .line 94
    return-void
.end method
