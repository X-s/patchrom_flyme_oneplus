.class Lcom/oneplus/camera/ModeUI$1;
.super Ljava/lang/Object;
.source "ModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<TTController;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ModeUI;)V
    .locals 0

    .prologue
    .line 22
    .local p1, "this$0":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ModeUI$1;->this$0:Lcom/oneplus/camera/ModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 25
    check-cast p1, Lcom/oneplus/camera/ModeController;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeUI$1;->onComponentFound(Lcom/oneplus/camera/ModeController;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ModeController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTController;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "component":Lcom/oneplus/camera/ModeController;, "TTController;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI$1;->this$0:Lcom/oneplus/camera/ModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ModeUI;->-wrap0(Lcom/oneplus/camera/ModeUI;Lcom/oneplus/camera/ModeController;)V

    .line 25
    return-void
.end method
