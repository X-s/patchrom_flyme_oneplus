.class Lcom/oneplus/camera/ui/CaptureBar$19;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
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
        "Lcom/oneplus/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateButtonFunctions(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->access$2000(Lcom/oneplus/camera/ui/CaptureBar;Z)V

    .line 603
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1600(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 604
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateMoreOptionsButton(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->access$2600(Lcom/oneplus/camera/ui/CaptureBar;Z)V

    .line 605
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateSwitchCameraButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1300(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 608
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1900(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 609
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateCaptureBarVisibility()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2400(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 612
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2700(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2800(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2700(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->startVideoCaptrueAnimation()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$19;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2700(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->stopVideoCaptrueAnimation()V

    goto :goto_0
.end method
