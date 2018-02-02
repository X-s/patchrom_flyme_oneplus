.class final Lcom/oneplus/camera/UIExposureControllerImpl;
.super Lcom/oneplus/camera/ProxyComponent;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ExposureController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ProxyComponent",
        "<",
        "Lcom/oneplus/camera/ExposureController;",
        ">;",
        "Lcom/oneplus/camera/ExposureController;"
    }
.end annotation


# instance fields
.field private final m_AELockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/UIExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/UIExposureControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->unlockAutoExposure()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/UIExposureControllerImpl;->unlockAutoExposure(Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 49
    const-string/jumbo v0, "UI Exposure Controller"

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/ExposureController;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/oneplus/camera/ProxyComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    .line 47
    return-void
.end method

.method private setAERegionsProp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->verifyAccess()V

    .line 197
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAERegionsProp() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return v2

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->isTargetBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/UIExposureControllerImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/UIExposureControllerImpl$5;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAERegionsProp() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v2

    .line 220
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private setExposureCompensationProp(F)Z
    .locals 3
    .param p1, "ev"    # F

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->verifyAccess()V

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setExposureCompensationProp() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return v2

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->isTargetBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/UIExposureControllerImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/UIExposureControllerImpl$6;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;F)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setExposureCompensationProp() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return v2

    .line 252
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private unlockAutoExposure()V
    .locals 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unlockAutoExposure()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;

    .line 265
    .local v0, "handles":[Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 266
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 267
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 266
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method private unlockAutoExposure(Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->verifyAccess()V

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/UIExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 277
    :cond_1
    iget-object v0, p1, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;->internalHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/UIExposureControllerImpl$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/UIExposureControllerImpl$7;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method


# virtual methods
.method public lockAutoExposure(I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->verifyAccess()V

    .line 58
    sget-object v2, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/UIExposureControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lockAutoExposure() - Exposure is not auto, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v8

    .line 63
    :cond_0
    const-string/jumbo v2, "lockAutoExposure"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/UIExposureControllerImpl;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 64
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v1, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/base/Handle;)V

    .line 67
    .local v1, "wrappedHandle":Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 69
    sget-object v2, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/UIExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 70
    :cond_1
    return-object v1

    .line 72
    .end local v1    # "wrappedHandle":Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;
    :cond_2
    return-object v8
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
    .line 80
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-super {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 81
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    .line 97
    invoke-super {p0}, Lcom/oneplus/camera/ProxyComponent;->onInitialize()V

    .line 100
    const-class v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/UIExposureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 103
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    invoke-virtual {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 104
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v3, Lcom/oneplus/camera/UIExposureControllerImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/UIExposureControllerImpl$1;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    .line 112
    .local v3, "unlockFocusCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 113
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 114
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/UIExposureControllerImpl$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/UIExposureControllerImpl$2;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 124
    const-class v4, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/ResolutionManager;

    .line 125
    .local v2, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-eqz v2, :cond_1

    .line 126
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/UIExposureControllerImpl$3;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/camera/UIExposureControllerImpl$3;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v2, v4, v5}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 136
    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/UIExposureControllerImpl$4;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/camera/UIExposureControllerImpl$4;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/camera/CameraActivity;)V

    invoke-interface {v2, v4, v5}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 149
    :goto_0
    if-eqz v1, :cond_0

    .line 150
    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 94
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/UIExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getResolutionManager() - No ResolutionManager"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onTargetBound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "target"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 156
    check-cast p1, Lcom/oneplus/camera/ExposureController;

    .end local p1    # "target":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/UIExposureControllerImpl;->onTargetBound(Lcom/oneplus/camera/ExposureController;)V

    return-void
.end method

.method protected onTargetBound(Lcom/oneplus/camera/ExposureController;)V
    .locals 0
    .param p1, "target"    # Lcom/oneplus/camera/ExposureController;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onTargetBound(Lcom/oneplus/base/component/Component;)V

    .line 156
    return-void
.end method

.method protected onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 170
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    if-ne p3, v0, :cond_0

    .line 172
    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->unlockAutoExposure()V

    .line 175
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ProxyComponent;->onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 168
    return-void
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
    .line 184
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 185
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/UIExposureControllerImpl;->setAERegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 186
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 187
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIExposureControllerImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 188
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
