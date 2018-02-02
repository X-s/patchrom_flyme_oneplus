.class Lcom/oneplus/camera/ui/CaptureBar$60$2;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar$60;->onComponentFound(Lcom/oneplus/camera/manual/ManualModeUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureBar$60;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar$60;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureBar$60;

    .prologue
    .line 2646
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$60$2;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 2649
    check-cast p3, Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar$60$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;",
            ">;",
            "Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2651
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/manual/ManualModeUI$KnobViewValueChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$2;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2649
    return-void
.end method
