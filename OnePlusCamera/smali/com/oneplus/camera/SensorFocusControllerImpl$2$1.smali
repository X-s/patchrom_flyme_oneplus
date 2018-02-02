.class Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/SensorFocusControllerImpl$2;->onComponentFound(Lcom/oneplus/camera/FocusController;)V
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
        "Lcom/oneplus/camera/FocusState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

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
            "Lcom/oneplus/camera/FocusState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/FocusState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/FocusState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/FocusState;>;"
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get0(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get3(Lcom/oneplus/camera/SensorFocusControllerImpl;)Z

    move-result v0

    .line 224
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get1(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get1(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get1(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set3(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 221
    :cond_0
    return-void
.end method
