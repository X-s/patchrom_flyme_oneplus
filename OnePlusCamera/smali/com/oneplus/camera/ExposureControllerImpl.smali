.class final Lcom/oneplus/camera/ExposureControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "ExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ExposureController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ExposureControllerImpl$1;,
        Lcom/oneplus/camera/ExposureControllerImpl$2;
    }
.end annotation


# instance fields
.field private final m_AELockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

.field private final m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ExposureControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ExposureControllerImpl;->detachFromCamera(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ExposureControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->onExposureConditionsChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ExposureControllerImpl;->unlockAutoExposure(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 46
    const-string/jumbo v0, "Exposure Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Lcom/oneplus/camera/ExposureControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ExposureControllerImpl$1;-><init>(Lcom/oneplus/camera/ExposureControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 33
    new-instance v0, Lcom/oneplus/camera/ExposureControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ExposureControllerImpl$2;-><init>(Lcom/oneplus/camera/ExposureControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 44
    return-void
.end method

.method private attachToCamera(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 63
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 64
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 65
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 66
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 67
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 68
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 69
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 72
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->onExposureConditionsChanged()V

    .line 52
    return-void
.end method

.method private detachFromCamera(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 92
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 93
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 94
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 95
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 96
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 97
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_ExposureConditionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 101
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method private onAELockedChanged(Z)V
    .locals 2
    .param p1, "isLocked"    # Z

    .prologue
    .line 159
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAELockedChanged() - AE unlocked by camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 163
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V
    .locals 1
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 173
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Ljava/util/List;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-super {p0, v0, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 175
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Lcom/oneplus/camera/AutoExposureState;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-super {p0, v0, p2}, Lcom/oneplus/camera/CameraComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 177
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-super {p0, v0, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 179
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/util/Range;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-super {p0, v0, p2}, Lcom/oneplus/camera/CameraComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 181
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-super {p0, v0, p2}, Lcom/oneplus/camera/CameraComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 183
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ExposureControllerImpl;->onAELockedChanged(Z)V

    goto :goto_0
.end method

.method private onExposureConditionsChanged()V
    .locals 6

    .prologue
    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, "isAuto":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 192
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 195
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 196
    const/4 v1, 0x0

    .line 202
    :cond_0
    :goto_0
    sget-object v2, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    if-nez v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->unlockAutoExposure()V

    .line 188
    :cond_1
    return-void

    .line 197
    :cond_2
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 198
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAERegionsProp(Ljava/util/List;)Z
    .locals 4
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
    const/4 v3, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->verifyAccess()V

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAERegionsProp() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return v3

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 272
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAERegionsProp() - No primary camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v3

    .line 279
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setExposureCompensationProp(F)Z
    .locals 4
    .param p1, "ev"    # F

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->verifyAccess()V

    .line 288
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExposureCompensationProp() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return v3

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 296
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExposureCompensationProp() - No primary camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return v3

    .line 303
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private unlockAutoExposure()V
    .locals 4

    .prologue
    .line 310
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unlockAutoExposure()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/Handle;

    .line 316
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 317
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 318
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 317
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 308
    :cond_1
    return-void
.end method

.method private unlockAutoExposure(Lcom/oneplus/base/Handle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v5, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->verifyAccess()V

    .line 324
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unlockAutoExposure() - Handle : "

    const-string/jumbo v3, ", handle count : "

    iget-object v4, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 335
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    .line 336
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 337
    :cond_2
    sget-object v1, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 320
    return-void
.end method


# virtual methods
.method public lockAutoExposure(I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->verifyAccess()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lockAutoExposure() - Component is not running"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object v4

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 119
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lockAutoExposure() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v4

    .line 126
    :cond_1
    sget-object v2, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ExposureControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lockAutoExposure() - AE is not on, ignore lock"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v4

    .line 133
    :cond_2
    new-instance v1, Lcom/oneplus/camera/ExposureControllerImpl$3;

    const-string/jumbo v2, "AELock"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/ExposureControllerImpl$3;-><init>(Lcom/oneplus/camera/ExposureControllerImpl;Ljava/lang/String;)V

    .line 141
    .local v1, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lockAutoExposure() - Handle : "

    const-string/jumbo v4, ", handle count : "

    iget-object v5, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v2, p0, Lcom/oneplus/camera/ExposureControllerImpl;->m_AELockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 147
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ExposureControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 152
    :cond_3
    return-object v1
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 219
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ExposureControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ExposureControllerImpl$4;-><init>(Lcom/oneplus/camera/ExposureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V

    .line 212
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/oneplus/camera/ExposureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ExposureControllerImpl;->detachFromCamera(Lcom/oneplus/camera/Camera;)V

    .line 242
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onRelease()V

    .line 236
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
    .line 251
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 252
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/ExposureControllerImpl;->setAERegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 253
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 254
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ExposureControllerImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 255
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
