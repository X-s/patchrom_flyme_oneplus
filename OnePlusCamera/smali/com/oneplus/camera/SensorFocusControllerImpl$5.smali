.class Lcom/oneplus/camera/SensorFocusControllerImpl$5;
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
    .line 318
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
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
    const/16 v4, 0x271a

    .line 323
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap2(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set5(Lcom/oneplus/camera/SensorFocusControllerImpl;J)J

    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-static {v0, v4, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$5;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0
.end method
