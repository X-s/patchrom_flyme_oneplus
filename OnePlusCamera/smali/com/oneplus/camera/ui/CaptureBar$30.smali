.class Lcom/oneplus/camera/ui/CaptureBar$30;
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
        "Lcom/oneplus/base/BaseActivity$State;",
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
    .line 1864
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1869
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_1

    .line 1871
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap43(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1872
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->-set4(Lcom/oneplus/camera/ui/CaptureBar;Z)Z

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_2

    .line 1876
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap37(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1877
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap54(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1878
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap51(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1879
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap40(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1880
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap47(Lcom/oneplus/camera/ui/CaptureBar;Z)V

    .line 1881
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1882
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1883
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap50(Lcom/oneplus/camera/ui/CaptureBar;)V

    goto :goto_0

    .line 1885
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_3

    .line 1887
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap54(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1890
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get7(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get8(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap33(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;Z)V

    goto :goto_0

    .line 1893
    :cond_3
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set2(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 1898
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get7(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1901
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$30;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const-string/jumbo v2, "Capture bar"

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap5(Lcom/oneplus/camera/ui/CaptureBar;Ljava/lang/String;Z)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set16(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0
.end method
