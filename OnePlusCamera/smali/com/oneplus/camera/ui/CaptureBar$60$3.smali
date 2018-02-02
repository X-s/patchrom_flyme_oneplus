.class Lcom/oneplus/camera/ui/CaptureBar$60$3;
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
        "Lcom/oneplus/base/EventArgs;",
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
    .line 2654
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2659
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap53(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2660
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2661
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2662
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap52(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2663
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$3;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap50(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2657
    return-void
.end method
