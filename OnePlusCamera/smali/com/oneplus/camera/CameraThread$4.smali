.class Lcom/oneplus/camera/CameraThread$4;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
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
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$4;->this$0:Lcom/oneplus/camera/CameraThread;

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
            "Lcom/oneplus/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/OperationState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$4;->this$0:Lcom/oneplus/camera/CameraThread;

    check-cast p1, Lcom/oneplus/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraThread;->-wrap15(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    .line 379
    :cond_0
    return-void
.end method
