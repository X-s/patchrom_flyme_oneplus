.class Lcom/oneplus/camera/watermark/WatermarkUI$6;
.super Ljava/lang/Object;
.source "WatermarkUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/watermark/WatermarkUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/watermark/WatermarkUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/WatermarkUI;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$6;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

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
    .line 328
    check-cast p3, Lcom/oneplus/camera/CaptureEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/watermark/WatermarkUI$6;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 1
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
    .line 330
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/CaptureEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$6;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-get0(Lcom/oneplus/camera/watermark/WatermarkUI;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 328
    return-void
.end method
