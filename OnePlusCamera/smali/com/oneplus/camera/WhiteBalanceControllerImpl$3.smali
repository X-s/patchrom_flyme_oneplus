.class Lcom/oneplus/camera/WhiteBalanceControllerImpl$3;
.super Ljava/lang/Object;
.source "WhiteBalanceControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/WhiteBalanceControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/WhiteBalanceControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/WhiteBalanceControllerImpl;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/oneplus/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;

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
    .line 141
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera;>;"
    iget-object v1, p0, Lcom/oneplus/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/WhiteBalanceControllerImpl;->detachFromCamera(Lcom/oneplus/camera/Camera;)V

    .line 142
    iget-object v1, p0, Lcom/oneplus/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/WhiteBalanceControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V

    .line 139
    return-void
.end method
