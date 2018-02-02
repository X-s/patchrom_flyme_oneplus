.class Lcom/oneplus/camera/SensorFocusControllerImpl$6;
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
        "Ljava/lang/Boolean;",
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
    .line 334
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    .line 339
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/16 v1, 0x271a

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set4(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 346
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set3(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 347
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap0(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$6;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set0(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_0
.end method
