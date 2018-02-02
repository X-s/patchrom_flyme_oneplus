.class Lcom/oneplus/camera/manual/ManualModeUI$20;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
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
        "Lcom/oneplus/camera/ui/GestureDetector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1329
    check-cast p1, Lcom/oneplus/camera/ui/GestureDetector;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$20;->onComponentFound(Lcom/oneplus/camera/ui/GestureDetector;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/GestureDetector;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/GestureDetector;

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set6(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/GestureDetector;)Lcom/oneplus/camera/ui/GestureDetector;

    .line 1332
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$20;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get7(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set7(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
