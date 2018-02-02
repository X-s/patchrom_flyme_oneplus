.class Lcom/oneplus/camera/ui/ZoomBarImpl$9;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

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
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    const/4 v1, 0x1

    .line 508
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get8(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get8(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setHapticFeedbackEnabled(Z)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)V

    .line 513
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap7(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    .line 505
    return-void

    .line 509
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
