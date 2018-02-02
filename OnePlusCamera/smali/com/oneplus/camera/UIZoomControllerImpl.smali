.class final Lcom/oneplus/camera/UIZoomControllerImpl;
.super Lcom/oneplus/camera/ProxyComponent;
.source "UIZoomControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ZoomController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ProxyComponent",
        "<",
        "Lcom/oneplus/camera/ZoomController;",
        ">;",
        "Lcom/oneplus/camera/ZoomController;"
    }
.end annotation


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_DigitalZoomRunnable:Ljava/lang/Runnable;

.field private m_LastZoomChangedTime:J


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/UIZoomControllerImpl;F)Z
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/UIZoomControllerImpl;->setDigitalZoomProp(F)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 29
    const-string/jumbo v0, "UI Zoom Controller"

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/ZoomController;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/oneplus/camera/ProxyComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 27
    return-void
.end method

.method private applyDigitalZoom(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->isTargetBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    new-instance v0, Lcom/oneplus/camera/UIZoomControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/UIZoomControllerImpl$1;-><init>(Lcom/oneplus/camera/UIZoomControllerImpl;F)V

    iput-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyDigitalZoom() - Fail to set zoom asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    return v2

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyDigitalZoom() - Target is not ready, set zoom later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v2
.end method

.method private setDigitalZoomProp(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->verifyAccess()V

    .line 162
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDigitalZoomProp() - Digital zoom is unsupported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v2

    .line 169
    :cond_0
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 170
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 175
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    .line 176
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    return v2

    .line 172
    :cond_2
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 178
    :cond_3
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 181
    invoke-direct {p0, p1}, Lcom/oneplus/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z

    .line 184
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public lockZoom(I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->verifyAccess()V

    .line 71
    const-string/jumbo v1, "lockZoom"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/UIZoomControllerImpl;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 72
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/UIZoomControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-object v0
.end method

.method protected onBindingToTargetProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-super {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 83
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/oneplus/camera/ProxyComponent;->onInitialize()V

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/camera/UIZoomControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 99
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/UIZoomControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/UIZoomControllerImpl$2;-><init>(Lcom/oneplus/camera/UIZoomControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 108
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/UIZoomControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 109
    iget-object v1, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/UIZoomControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/UIZoomControllerImpl$3;-><init>(Lcom/oneplus/camera/UIZoomControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 92
    return-void
.end method

.method protected bridge synthetic onTargetBound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "target"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 122
    check-cast p1, Lcom/oneplus/camera/ZoomController;

    .end local p1    # "target":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/UIZoomControllerImpl;->onTargetBound(Lcom/oneplus/camera/ZoomController;)V

    return-void
.end method

.method protected onTargetBound(Lcom/oneplus/camera/ZoomController;)V
    .locals 4
    .param p1, "target"    # Lcom/oneplus/camera/ZoomController;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onTargetBound(Lcom/oneplus/base/component/Component;)V

    .line 128
    iget-wide v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z

    .line 122
    :cond_0
    return-void
.end method

.method protected onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p3, v0, :cond_1

    .line 139
    iget-wide v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 140
    sget-object v1, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-super {p0, v1, v0}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ProxyComponent;->onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 152
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->setDigitalZoomProp(F)Z

    move-result v0

    return v0

    .line 153
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
