.class Lcom/oneplus/camera/panorama/PanoramaUI$3;
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
        "Lcom/oneplus/camera/ui/CaptureButtons;",
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
    .line 577
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$3;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 580
    check-cast p1, Lcom/oneplus/camera/ui/CaptureButtons;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI$3;->onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$3;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set1(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;

    .line 583
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/panorama/PanoramaUI$3$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$3$1;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI$3;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 591
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/panorama/PanoramaUI$3$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$3$2;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI$3;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 599
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$3;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$3;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap5(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    .line 580
    :cond_0
    return-void
.end method
