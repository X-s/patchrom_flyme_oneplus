.class final Lcom/oneplus/camera/FocusControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FocusController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FocusControllerImpl$AfHandle;
    }
.end annotation


# instance fields
.field private final m_AfRegionsChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_CurrentAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

.field private final m_FocusLockHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FocusModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FocusStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/FocusState;",
            ">;"
        }
    .end annotation
.end field

.field private m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 79
    const-string v0, "Focus Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/oneplus/camera/FocusControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FocusControllerImpl$1;-><init>(Lcom/oneplus/camera/FocusControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_AfRegionsChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 32
    new-instance v0, Lcom/oneplus/camera/FocusControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FocusControllerImpl$2;-><init>(Lcom/oneplus/camera/FocusControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 40
    new-instance v0, Lcom/oneplus/camera/FocusControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FocusControllerImpl$3;-><init>(Lcom/oneplus/camera/FocusControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/camera/Camera;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FocusControllerImpl;->onAfRegionsChanged(Lcom/oneplus/camera/Camera;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusModeChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FocusControllerImpl;->unlockFocus(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FocusControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method private cancelAutoFocus()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method private onAfRegionsChanged(Lcom/oneplus/camera/Camera;Ljava/util/List;)V
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    sget-object v0, Lcom/oneplus/camera/FocusControllerImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/FocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/oneplus/camera/FocusControllerImpl;->cancelAutoFocus()V

    .line 164
    if-eqz p1, :cond_0

    .line 166
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_AfRegionsChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 167
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 168
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 172
    :cond_0
    if-eqz p2, :cond_1

    .line 174
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_AfRegionsChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 175
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 176
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 177
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusState;

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusState;)V

    .line 178
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusModeChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-object v0, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusState;)V

    .line 183
    sget-object v0, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FocusControllerImpl;->onFocusModeChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V

    goto :goto_0
.end method

.method private onFocusModeChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    .line 191
    sget-object v0, Lcom/oneplus/camera/FocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/FocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne p2, v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/oneplus/camera/FocusControllerImpl;->unlockFocus()V

    .line 196
    :cond_0
    return-void
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusState;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    const/4 v2, 0x0

    .line 202
    sget-object v1, Lcom/oneplus/camera/FocusControllerImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/camera/FocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 203
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq p2, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_CurrentAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_CurrentAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->complete()V

    .line 209
    iput-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_CurrentAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    if-eqz v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .line 216
    .local v0, "handle":Lcom/oneplus/camera/FocusControllerImpl$AfHandle;
    iput-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .line 217
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "onFocusStateChanged() - Start pending AF, handle : "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/FocusControllerImpl;->startAutoFocus(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusControllerImpl$AfHandle;)Z

    .line 221
    .end local v0    # "handle":Lcom/oneplus/camera/FocusControllerImpl$AfHandle;
    :cond_1
    return-void
.end method

.method private startAutoFocus(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusControllerImpl$AfHandle;)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "handle"    # Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .prologue
    const/4 v3, 0x0

    .line 310
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 311
    .local v2, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    iget v4, p2, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 313
    const/4 v0, 0x1

    .line 314
    .local v0, "continuousAF":Z
    sget-object v4, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Continuous AF is unsupported"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return v3

    .line 320
    .end local v0    # "continuousAF":Z
    :cond_0
    iget v4, p2, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 322
    const/4 v0, 0x0

    .line 323
    .restart local v0    # "continuousAF":Z
    sget-object v4, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 325
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Single AF is unsupported"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0    # "continuousAF":Z
    :cond_1
    sget-object v4, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 332
    .restart local v0    # "continuousAF":Z
    if-nez v0, :cond_2

    sget-object v4, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 334
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Both single and continuous AF is unsupported"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Handle : "

    invoke-static {v4, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :try_start_0
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p2, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->regions:Ljava/util/List;

    invoke-interface {p1, v4, v5}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    if-eqz v0, :cond_4

    .line 356
    :try_start_1
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {p1, v4, v5}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :cond_3
    iput-object p2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_CurrentAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .line 375
    const/4 v3, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 348
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Fail to set AF regions"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {p1, v4, v5}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 360
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->startAutoFocus(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 362
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Fail to start single AF"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 367
    :catch_1
    move-exception v1

    .line 369
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Fail to start AF"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unlockFocus()V
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unlockFocus()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/Handle;

    .line 388
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 389
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 390
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 389
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private unlockFocus(Lcom/oneplus/base/Handle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v5, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->verifyAccess()V

    .line 396
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "unlockFocus() - Handle : "

    const-string v3, ", handle count : "

    iget-object v4, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v1, Lcom/oneplus/camera/FocusControllerImpl;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/FocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 410
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 414
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "unlockFocus() - Cancel AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->cancelAutoFocus(I)V

    goto :goto_0
.end method


# virtual methods
.method public lockFocus(I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->verifyAccess()V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->isRunningOrInitializing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "lockFocus() - Component is not running"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 146
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    sget-object v3, Lcom/oneplus/camera/FocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FocusControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v3, v4, :cond_2

    .line 105
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "lockFocus() - Focus mode is manual, ignore"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 106
    goto :goto_0

    .line 110
    :cond_2
    new-instance v1, Lcom/oneplus/camera/FocusControllerImpl$4;

    const-string v3, "FocusLock"

    invoke-direct {v1, p0, v3}, Lcom/oneplus/camera/FocusControllerImpl$4;-><init>(Lcom/oneplus/camera/FocusControllerImpl;Ljava/lang/String;)V

    .line 118
    .local v1, "handle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "lockFocus() - Handle : "

    const-string v5, ", handle count : "

    iget-object v6, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v1, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    invoke-virtual {v3}, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->complete()V

    .line 125
    iput-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_PendingAfHandle:Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->m_FocusLockHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 131
    sget-object v2, Lcom/oneplus/camera/FocusControllerImpl;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/FocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 132
    sget-object v2, Lcom/oneplus/camera/FocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FocusControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v2, v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 135
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "lockFocus() - Trigger AF to lock focus"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->startAutoFocus(I)Z

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 233
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/FocusControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/FocusControllerImpl$5;-><init>(Lcom/oneplus/camera/FocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/FocusControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 244
    return-void
.end method

.method public startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v3, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->verifyAccess()V

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Component is not running"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 304
    :cond_0
    :goto_0
    return-object v1

    .line 259
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FocusControllerImpl;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FocusControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Focus is locked"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 262
    goto :goto_0

    .line 264
    :cond_2
    sget-object v2, Lcom/oneplus/camera/FocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FocusControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v2, v4, :cond_3

    .line 266
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Focus is manual"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 267
    goto :goto_0

    .line 271
    :cond_3
    and-int/lit8 v2, p2, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 273
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAutoFocus() - Invalid flags : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 274
    goto :goto_0

    .line 276
    :cond_4
    if-nez p1, :cond_5

    .line 277
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 281
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_6

    .line 283
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - No primary camera"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 284
    goto :goto_0

    .line 288
    :cond_6
    new-instance v1, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;-><init>(Lcom/oneplus/camera/FocusControllerImpl;Ljava/util/List;I)V

    .line 289
    .local v1, "handle":Lcom/oneplus/camera/FocusControllerImpl$AfHandle;
    iget-object v2, p0, Lcom/oneplus/camera/FocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Create handle : "

    invoke-static {v2, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/FocusControllerImpl;->startAutoFocus(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusControllerImpl$AfHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v3

    .line 303
    goto :goto_0
.end method
