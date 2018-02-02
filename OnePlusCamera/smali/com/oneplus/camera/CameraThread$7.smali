.class Lcom/oneplus/camera/CameraThread$7;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
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
        "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$7;->this$0:Lcom/oneplus/camera/CameraThread;

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
    .line 407
    check-cast p3, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$7;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
            ">;",
            "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CameraOpenFailedEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$7;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p3}, Lcom/oneplus/camera/CameraThread;->-wrap12(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 407
    return-void
.end method
