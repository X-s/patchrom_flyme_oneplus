.class Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;
.super Ljava/lang/Object;
.source "MotionVectorPreviewRenderer.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
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
        "Lcom/oneplus/camera/MotionVectorEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

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
    .line 67
    check-cast p3, Lcom/oneplus/camera/MotionVectorEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/MotionVectorEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/MotionVectorEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/MotionVectorEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/MotionVectorEventArgs;",
            ">;",
            "Lcom/oneplus/camera/MotionVectorEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/MotionVectorEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    new-instance v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-virtual {p3}, Lcom/oneplus/camera/MotionVectorEventArgs;->getVectors()[[Landroid/graphics/PointF;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;[[Landroid/graphics/PointF;)V

    const/16 v2, 0x2711

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 67
    return-void
.end method
