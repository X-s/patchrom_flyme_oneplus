.class Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;
.super Ljava/lang/Object;
.source "SlowMotionUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/slowmotion/SlowMotionUI;->onInitialize()V
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
        "Lcom/oneplus/camera/media/ResolutionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 178
    check-cast p1, Lcom/oneplus/camera/media/ResolutionManager;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->onComponentFound(Lcom/oneplus/camera/media/ResolutionManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/media/ResolutionManager;)V
    .locals 4
    .param p1, "component"    # Lcom/oneplus/camera/media/ResolutionManager;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-set0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;

    .line 181
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-static {v0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-wrap0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-static {v0}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-get0(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-static {v1}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-get1(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionUI;

    invoke-static {v2}, Lcom/oneplus/camera/slowmotion/SlowMotionUI;->-get2(Lcom/oneplus/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 178
    :cond_0
    return-void
.end method
