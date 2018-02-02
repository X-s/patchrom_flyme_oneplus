.class Lcom/oneplus/camera/ExposureControllerImpl$4;
.super Ljava/lang/Object;
.source "ExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ExposureControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ExposureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ExposureControllerImpl;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oneplus/camera/ExposureControllerImpl$4;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

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
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl$4;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ExposureControllerImpl;->-wrap1(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/camera/Camera;)V

    .line 225
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl$4;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ExposureControllerImpl;->-wrap0(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/camera/Camera;)V

    .line 222
    return-void
.end method
