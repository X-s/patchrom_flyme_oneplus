.class Lcom/oneplus/camera/ui/GestureDetectorImpl$2;
.super Ljava/lang/Object;
.source "GestureDetectorImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/GestureDetectorImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$2;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

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
    .line 289
    check-cast p3, Lcom/oneplus/camera/ui/MotionEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/GestureDetectorImpl$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 2
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
    .line 293
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/ui/MotionEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$2;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/ui/MotionEventArgs;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    # invokes: Lcom/oneplus/camera/ui/GestureDetectorImpl;->handleTouchEventInternal(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$1500(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;)V

    .line 294
    return-void
.end method
