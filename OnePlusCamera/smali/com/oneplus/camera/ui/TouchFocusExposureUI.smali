.class final Lcom/oneplus/camera/ui/TouchFocusExposureUI;
.super Lcom/oneplus/camera/CameraComponent;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/camera/ui/TouchAutoExposureUI;
.implements Lcom/oneplus/camera/ui/TouchAutoFocusUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;,
        Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    }
.end annotation


# static fields
.field private static final AF_REGION_HEIGHT:F = 0.25f

.field private static final AF_REGION_WIDTH:F = 0.25f

.field private static final DURATION_AF_LOCK_THREAHOLD:J = 0x3e8L

.field private static final DURATION_MIN_TOUCH_AF_INTERVAL:J = 0x12cL

.field private static final DURATION_START_AF_THREAHOLD:J = 0x1f4L

.field private static final MSG_LOCK_AE_AF:I = 0x2711

.field private static final MSG_START_AF:I = 0x2710

.field private static final TOUCH_AF_DISTANCE_THRESHOLD:F = 0.05f


# instance fields
.field private m_DisableTouchExposureHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_DisableTouchFocusHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_ExposureLockHandle:Lcom/oneplus/base/Handle;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_FocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_IsPointerUppedWhenFocusScanning:Z

.field private m_LastAFTriggeredTime:J

.field private m_TouchAfDistanceThreshold:F

.field private m_TouchAfHandle:Lcom/oneplus/base/Handle;

.field private final m_TouchDownPosition:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 75
    const-string v0, "Touch AE/AF UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;
    .param p1, "x1"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/MotionEventArgs;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/base/ScreenSize;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;
    .param p1, "x1"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->unlockFocusAndExposure()V

    return-void
.end method

.method private bindToExposureController()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_0
    const-class v0, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 85
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v0, :cond_1

    .line 86
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method private bindToFocusController()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 97
    :cond_0
    const-class v0, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusController;

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 98
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    move v0, v1

    .line 108
    goto :goto_0
.end method

.method private canTouchFocus()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 117
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 146
    :goto_0
    return v1

    .line 121
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    sget-object v3, Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 146
    :cond_2
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_2

    move v1, v2

    .line 129
    goto :goto_0

    .line 133
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    move v1, v2

    .line 140
    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 133
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private lockFocusAndExposure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v1, "lockFocusAndExposure() - Capture is not ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockFocusAndExposure() - Disable exposure handle counts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disable focus handle counts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v1, "lockFocusAndExposure()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ExposureController;->lockAutoExposure(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 10
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    const-wide/16 v8, 0x0

    .line 237
    sget-object v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$FocusState:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 240
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 244
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    if-nez v2, :cond_0

    .line 249
    const-wide/16 v2, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 250
    .local v0, "delay":J
    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v3, "onFocusStateChanged() - Start AE/AF lock timer : "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ms"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v3, "onFocusStateChanged() - Lock AE/AF immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->lockFocusAndExposure()V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 9
    .param p1, "e"    # Lcom/oneplus/camera/ui/MotionEventArgs;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x2711

    const/16 v7, 0x2710

    const/high16 v6, -0x40800000    # -1.0f

    .line 325
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 327
    :cond_0
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    .line 328
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v4, "onTouch() - Down"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 339
    .local v2, "focusCenter":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getY()F

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v2, v6}, Lcom/oneplus/camera/ui/Viewfinder;->pointToPreview(FFLandroid/graphics/PointF;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v4, "onTouch() - Cannot point to preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 345
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 352
    .end local v2    # "focusCenter":Landroid/graphics/PointF;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 355
    .local v0, "diffX":F
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 356
    .local v1, "diffY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    iget v5, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 358
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 364
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v4, "onTouch() - Cancel"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 371
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v4, "onTouch() - Up"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    sget-object v3, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;)V

    .line 378
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 388
    return-void
.end method

.method private triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V
    .locals 18
    .param p1, "type"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->bindToFocusController()Z

    move-result v7

    if-nez v7, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->canTouchFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 396
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x0

    cmpg-float v7, p3, v7

    if-ltz v7, :cond_0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x12c

    cmp-long v7, v14, v16

    if-ltz v7, :cond_0

    .line 402
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 403
    .local v10, "center":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    .line 404
    .local v9, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v9}, Lcom/oneplus/camera/CameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v7

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v7, v0, v1, v10, v13}, Lcom/oneplus/camera/ui/Viewfinder;->pointToPreview(FFLandroid/graphics/PointF;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 406
    iget v7, v10, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e000000    # 0.125f

    sub-float v3, v7, v13

    .line 407
    .local v3, "left":F
    iget v7, v10, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3e000000    # 0.125f

    sub-float v4, v7, v13

    .line 408
    .local v4, "top":F
    const/high16 v7, 0x3e800000    # 0.25f

    add-float v5, v3, v7

    .line 409
    .local v5, "right":F
    const/high16 v7, 0x3e800000    # 0.25f

    add-float v6, v4, v7

    .line 410
    .local v6, "bottom":F
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_2

    .line 411
    const/4 v3, 0x0

    .line 412
    :cond_2
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    .line 413
    const/4 v4, 0x0

    .line 414
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_4

    .line 415
    const/high16 v5, 0x3f800000    # 1.0f

    .line 416
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 417
    const/high16 v6, 0x3f800000    # 1.0f

    .line 418
    :cond_5
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 419
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v8, :cond_6

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v7, v13, :cond_6

    .line 421
    move v12, v3

    .line 422
    .local v12, "tempLeft":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v5

    .line 423
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v12

    .line 425
    .end local v12    # "tempLeft":F
    :cond_6
    new-instance v2, Lcom/oneplus/camera/Camera$MeteringRect;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/Camera$MeteringRect;-><init>(FFFFF)V

    .line 426
    .local v2, "rect":Lcom/oneplus/camera/Camera$MeteringRect;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/oneplus/camera/Camera$MeteringRect;

    const/4 v13, 0x0

    aput-object v2, v7, v13

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 429
    .local v11, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->unlockFocusAndExposure()V

    .line 432
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-eq v0, v7, :cond_7

    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_9

    .line 435
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    .line 438
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v13, 0x1

    invoke-interface {v7, v11, v13}, Lcom/oneplus/camera/FocusController;->startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    .line 439
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string v13, "startAutoFocus() - Fail to start touch AF"

    invoke-static {v7, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    .line 449
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    sget-object v13, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 453
    :cond_9
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-eq v0, v7, :cond_a

    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_0

    .line 456
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->bindToExposureController()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 458
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v13, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v13, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v13, v11}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 463
    :cond_b
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->EVENT_TOUCH_AE:Lcom/oneplus/base/EventKey;

    sget-object v13, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_0
.end method

.method private unlockFocusAndExposure()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    .line 511
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 512
    return-void
.end method

.method private updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 519
    .local v0, "length":I
    int-to-float v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    .line 520
    return-void
.end method


# virtual methods
.method public disableTouchLockExposure()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$2;

    const-string v1, "Disable Touch Lock Exposure"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$2;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Ljava/lang/String;)V

    .line 162
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object v0
.end method

.method public disableTouchLockFocus()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$3;

    const-string v1, "Disable Touch Lock Focus"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$3;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Ljava/lang/String;)V

    .line 179
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 203
    :goto_0
    return-void

    .line 192
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->lockFocusAndExposure()V

    goto :goto_0

    .line 196
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 275
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 285
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 294
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$6;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 303
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$7;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V

    .line 318
    return-void
.end method

.method public touchAutoExposure(FF)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "cX"    # F
    .param p2, "cY"    # F

    .prologue
    .line 480
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 481
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;

    const-string v1, "Touch exposure"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Ljava/lang/String;)V

    return-object v0
.end method

.method public touchAutoExposure(Landroid/graphics/PointF;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "touchPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 472
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public touchAutoFocus(FF)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "cX"    # F
    .param p2, "cY"    # F

    .prologue
    .line 502
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public touchAutoFocus(Landroid/graphics/PointF;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "touchPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 494
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
