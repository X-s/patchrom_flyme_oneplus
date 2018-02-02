.class Lcom/oneplus/camera/panorama/PanoramaUI$4;
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
        "Lcom/oneplus/camera/media/ResolutionManager;",
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
    .line 614
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 617
    check-cast p1, Lcom/oneplus/camera/media/ResolutionManager;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI$4;->onComponentFound(Lcom/oneplus/camera/media/ResolutionManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/media/ResolutionManager;)V
    .locals 4
    .param p1, "component"    # Lcom/oneplus/camera/media/ResolutionManager;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set3(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;

    .line 620
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get3(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get3(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get8(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaUI$4;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v2}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get9(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 617
    :cond_0
    return-void
.end method
