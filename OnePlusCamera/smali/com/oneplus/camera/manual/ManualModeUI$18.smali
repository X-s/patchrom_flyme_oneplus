.class Lcom/oneplus/camera/manual/ManualModeUI$18;
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
        "Lcom/oneplus/camera/ui/PreviewCover;",
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
    .line 1300
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1303
    check-cast p1, Lcom/oneplus/camera/ui/PreviewCover;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$18;->onComponentFound(Lcom/oneplus/camera/ui/PreviewCover;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/PreviewCover;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/PreviewCover;

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/ui/PreviewCover;)Lcom/oneplus/camera/ui/PreviewCover;

    .line 1306
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get11(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI;->-get0()Lcom/oneplus/camera/ui/PreviewCover$Style;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v2, v2, Lcom/oneplus/camera/manual/ManualModeUI;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 1303
    return-void
.end method
