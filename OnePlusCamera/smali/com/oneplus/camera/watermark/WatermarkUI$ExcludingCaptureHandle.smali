.class final Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;
.super Lcom/oneplus/base/Handle;
.source "WatermarkUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/watermark/WatermarkUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExcludingCaptureHandle"
.end annotation


# instance fields
.field public final captureHandle:Lcom/oneplus/camera/CaptureHandle;

.field final synthetic this$0:Lcom/oneplus/camera/watermark/WatermarkUI;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/watermark/WatermarkUI;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/WatermarkUI;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    .line 90
    const-string/jumbo v0, "ExcludeCapture"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p2, p0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 88
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-wrap6(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-get0(Lcom/oneplus/camera/watermark/WatermarkUI;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
