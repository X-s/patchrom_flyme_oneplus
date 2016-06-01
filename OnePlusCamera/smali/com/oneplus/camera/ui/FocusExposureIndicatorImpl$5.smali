.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

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
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/PhotoCaptureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$500(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    .line 884
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$600(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$602(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 887
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 888
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$700(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$700(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V

    goto :goto_0
.end method
