.class Lcom/oneplus/camera/ui/OnScreenHintImpl$3;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 199
    check-cast p1, Lcom/oneplus/camera/ui/OptionsPanel;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;->onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/OptionsPanel;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-set1(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OptionsPanel;)Lcom/oneplus/camera/ui/OptionsPanel;

    .line 202
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get3(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/ui/OptionsPanel;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/OnScreenHintImpl$3$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$3$1;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl$3;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 199
    return-void
.end method
