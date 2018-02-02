.class Lcom/oneplus/camera/SensorFocusControllerImpl$8;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/SensorFocusControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 373
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set4(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 376
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set3(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 377
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap0(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set0(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/16 v1, 0x271a

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0
.end method
