.class Lcom/oneplus/camera/manual/ManualModeUI$7;
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
        "Lcom/oneplus/camera/ui/Viewfinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 522
    check-cast p1, Lcom/oneplus/camera/ui/Viewfinder;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$7;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # setter for: Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;
    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->access$702(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;

    .line 527
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # getter for: Lcom/oneplus/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$700(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$7$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$7$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$7;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 539
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$7;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # invokes: Lcom/oneplus/camera/manual/ManualModeUI;->retryToEnter()V
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$100(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 540
    return-void
.end method
