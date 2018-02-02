.class Lcom/oneplus/camera/watermark/WatermarkUI$7;
.super Ljava/lang/Object;
.source "WatermarkUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/watermark/WatermarkUI;->onOnlineWatermarkControllerFound(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/watermark/WatermarkUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/WatermarkUI;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$7;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$7;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-get2(Lcom/oneplus/camera/watermark/WatermarkUI;)Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/WatermarkUI$7$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$7$1;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI$7;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 328
    return-void
.end method
