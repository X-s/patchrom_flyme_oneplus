.class Lcom/oneplus/camera/ui/FaceRenderer$5;
.super Ljava/lang/Object;
.source "FaceRenderer.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FaceRenderer;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/FaceRenderer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FaceRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FaceRenderer;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oneplus/camera/ui/FaceRenderer$5;->this$0:Lcom/oneplus/camera/ui/FaceRenderer;

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
    .line 315
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer$5;->this$0:Lcom/oneplus/camera/ui/FaceRenderer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FaceRenderer;->-wrap0(Lcom/oneplus/camera/ui/FaceRenderer;)V

    .line 313
    :cond_0
    return-void
.end method
