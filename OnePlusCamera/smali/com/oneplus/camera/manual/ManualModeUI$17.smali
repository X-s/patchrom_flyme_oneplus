.class Lcom/oneplus/camera/manual/ManualModeUI$17;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1282
    check-cast p1, Lcom/oneplus/camera/ui/Viewfinder;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$17;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set21(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;

    .line 1285
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get18(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/manual/ManualModeUI$17$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/manual/ManualModeUI$17$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$17;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1297
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap19(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 1282
    return-void
.end method
