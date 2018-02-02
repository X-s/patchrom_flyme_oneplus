.class Lcom/oneplus/camera/ui/LongMediaProcessingUI$2;
.super Ljava/lang/Object;
.source "LongMediaProcessingUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LongMediaProcessingUI;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI$2;->this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;

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
    .line 121
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI$2;->this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-wrap3(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Lcom/oneplus/camera/VideoCaptureState;)V

    .line 119
    return-void
.end method
