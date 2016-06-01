.class final Lcom/oneplus/camera/SensorFocusControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SensorFocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/SensorFocusControllerImpl$8;,
        Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    }
.end annotation


# static fields
.field private static final DURATION_SENSOR_AF_AFTER_TOUCH:J = 0x3e8L

.field private static final DURATION_SENSOR_AF_AFTER_TOUCH_MAX:J = 0x1388L

.field private static final DURATION_START_SENSOR_AF:J = 0x1f4L

.field private static final MSG_START_AF:I = 0x2710

.field private static final MSG_TOUCH_TIMEOUT:I = 0x271a

.field private static final STABLE_THRESHOLD:F = 1.5f


# instance fields
.field private m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_IsAEResetNeeded:Z

.field private final m_LastAccelerometerValues:[F

.field private m_LastTouchTime:J

.field private m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 54
    const-string v0, "Sensor AF Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 33
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/ExposureController;)Lcom/oneplus/camera/ExposureController;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ExposureController;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/camera/SensorFocusControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/FocusController;)Lcom/oneplus/camera/FocusController;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/FocusController;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/oneplus/camera/SensorFocusControllerImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/oneplus/camera/SensorFocusControllerImpl;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;
    .param p1, "x1"    # [F

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method private canSensorFocus(Z)Z
    .locals 8
    .param p1, "checkTouch"    # Z

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 63
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 100
    :goto_0
    return v1

    .line 67
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    move v1, v2

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    sget-object v3, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :cond_4
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_4

    move v1, v2

    .line 83
    goto :goto_0

    .line 87
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/SensorFocusControllerImpl$8;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    move v1, v2

    .line 94
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 7
    .param p1, "values"    # [F

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v2, v2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v2, v2, v0

    aget v3, p1, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v2, v2, v5

    aget v3, p1, v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 144
    .local v0, "isMoved":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    const/4 v3, 0x3

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    if-eqz v0, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    .line 159
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isMoved":Z
    :cond_2
    move v0, v1

    .line 139
    goto :goto_0

    .line 149
    .restart local v0    # "isMoved":Z
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_4

    .line 151
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_1
.end method

.method private resetAfState()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    return-void
.end method

.method private startAutoFocus()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z

    move-result v0

    return v0
.end method

.method private startAutoFocus(Z)Z
    .locals 9
    .param p1, "checkTouch"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 330
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v1, :cond_0

    move v1, v2

    .line 386
    :goto_0
    return v1

    .line 334
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    move v1, v3

    .line 335
    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v4, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 339
    goto :goto_0

    .line 342
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->canSensorFocus(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "startAutoFocus() - Cannot sensor focus"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 345
    goto :goto_0

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v4, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v4, :cond_4

    .line 351
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Focus mode is manual, skip sensor AF"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v4, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v4, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocus() - Already performing continuous AF, skip sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 357
    goto :goto_0

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v1, :cond_6

    .line 363
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Reset AE"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4, v8}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 365
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 366
    iput-boolean v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 375
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v4, 0x2

    invoke-interface {v1, v8, v4}, Lcom/oneplus/camera/FocusController;->startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 376
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 378
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "startAutoFocus() - Fail to start sensor AF"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 379
    goto/16 :goto_0

    .line 370
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "startAutoFocus() - Reset AE later"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iput-boolean v3, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    goto :goto_1

    .line 383
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_7
    const/16 v1, 0x271a

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    move v1, v3

    .line 386
    goto/16 :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 112
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Touch timeout, restart sensor focus"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 179
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 180
    const-class v1, Lcom/oneplus/camera/ExposureController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$1;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 207
    const-class v1, Lcom/oneplus/camera/FocusController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 255
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    sget-object v2, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/SensorFocusControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$3;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 269
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$4;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 277
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$5;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 292
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$6;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 306
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$7;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 320
    return-void
.end method
