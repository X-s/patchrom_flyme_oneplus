.class Lcom/oneplus/camera/CameraThread$20;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->bindToHighComponents()V
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
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$20;->this$0:Lcom/oneplus/camera/CameraThread;

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
    .line 908
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$20;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 2
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
    .line 910
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$20;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p3}, Lcom/oneplus/camera/CameraThread;->-wrap29(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaEventArgs;)V

    .line 911
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$20;->this$0:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-static {v0, v1, p3}, Lcom/oneplus/camera/CameraThread;->-wrap26(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 908
    return-void
.end method
