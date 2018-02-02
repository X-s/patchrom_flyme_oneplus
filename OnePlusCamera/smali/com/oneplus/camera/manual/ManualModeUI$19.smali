.class Lcom/oneplus/camera/manual/ManualModeUI$19;
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
        "Lcom/oneplus/camera/ui/CaptureModeSwitcher;",
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
    .line 1309
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1312
    check-cast p1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$19;->onComponentFound(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set2(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 1315
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$19$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ManualModeUI$19$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$19;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1312
    return-void
.end method
