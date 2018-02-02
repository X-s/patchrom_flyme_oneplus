.class Lcom/oneplus/camera/manual/ManualModeUI$15;
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
        "Lcom/oneplus/camera/ui/OptionsPanel;",
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
    .line 682
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$15;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 685
    check-cast p1, Lcom/oneplus/camera/ui/OptionsPanel;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$15;->onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/OptionsPanel;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$15;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set5(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/OptionsPanel;)Lcom/oneplus/camera/ui/OptionsPanel;

    .line 688
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$15;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/OptionsPanel;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$15$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$15$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$15;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 685
    return-void
.end method
