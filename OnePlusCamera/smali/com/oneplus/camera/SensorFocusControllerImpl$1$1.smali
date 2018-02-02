.class Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/SensorFocusControllerImpl$1;->onComponentFound(Lcom/oneplus/camera/ExposureController;)V
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
        "Lcom/oneplus/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$1;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$1;

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
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/AutoExposureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/AutoExposureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap2(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    .line 198
    :cond_0
    return-void
.end method
