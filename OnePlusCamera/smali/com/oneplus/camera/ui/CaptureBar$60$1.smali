.class Lcom/oneplus/camera/ui/CaptureBar$60$1;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 2633
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$60$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2638
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    return-void

    .line 2640
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap53(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2641
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2642
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2643
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$60$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$60;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$60;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap50(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2636
    return-void
.end method
