.class Lcom/oneplus/camera/ui/CaptureBar$60;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onPostInitialize()V
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
        "Lcom/oneplus/camera/manual/ManualModeUI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 2626
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 2629
    check-cast p1, Lcom/oneplus/camera/manual/ManualModeUI;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar$60;->onComponentFound(Lcom/oneplus/camera/manual/ManualModeUI;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->-set9(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/manual/ManualModeUI;

    .line 2633
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get17(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/manual/ManualModeUI;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_IS_CHANGING_MANUAL_CUSTOM_SETTING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$60$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$60$1;-><init>(Lcom/oneplus/camera/ui/CaptureBar$60;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2646
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get17(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/manual/ManualModeUI;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_KNOB_VIEW_VALUE_UPDATED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$60$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$60$2;-><init>(Lcom/oneplus/camera/ui/CaptureBar$60;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2654
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get17(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/manual/ManualModeUI;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->EVENT_MANUAL_CUSTOM_SETTING_RESET:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$60$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$60$3;-><init>(Lcom/oneplus/camera/ui/CaptureBar$60;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2666
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2629
    return-void
.end method
