.class Lcom/oneplus/camera/watermark/WatermarkUI$2;
.super Ljava/lang/Object;
.source "WatermarkUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


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
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;",
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
    .line 212
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$2;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 215
    check-cast p1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/watermark/WatermarkUI$2;->onComponentFound(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$2;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/watermark/WatermarkUI;->-wrap1(Lcom/oneplus/camera/watermark/WatermarkUI;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    .line 215
    return-void
.end method
