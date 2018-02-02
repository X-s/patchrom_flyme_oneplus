.class Lcom/oneplus/camera/panorama/PanoramaUI$2;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;->onEnter(I)Z
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
        "Lcom/oneplus/camera/ui/CaptureControlPanel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 558
    check-cast p1, Lcom/oneplus/camera/ui/CaptureControlPanel;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI$2;->onComponentFound(Lcom/oneplus/camera/ui/CaptureControlPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CaptureControlPanel;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureControlPanel;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set2(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureControlPanel;)Lcom/oneplus/camera/ui/CaptureControlPanel;

    .line 561
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$2;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap5(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    .line 558
    :cond_0
    return-void
.end method
