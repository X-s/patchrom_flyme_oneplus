.class Lcom/oneplus/camera/SensorFocusControllerImpl$2$2;
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
        "Lcom/oneplus/camera/FocusMode;",
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
    .line 237
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$2;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

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
            "Lcom/oneplus/camera/FocusMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/FocusMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/FocusMode;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v1, :cond_1

    .line 243
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-eq v0, v1, :cond_0

    .line 244
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2$2;->this$1:Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap0(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 240
    :cond_1
    return-void
.end method
