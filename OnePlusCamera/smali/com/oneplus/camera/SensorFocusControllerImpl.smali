.class final Lcom/oneplus/camera/SensorFocusControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SensorFocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

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
.method static synthetic -get0(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/SensorFocusControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    return v0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/VideoCaptureState;->values()[Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/ExposureController;)Lcom/oneplus/camera/ExposureController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/FocusController;)Lcom/oneplus/camera/FocusController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/SensorFocusControllerImpl;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z
    .locals 1
    .param p1, "checkTouch"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/SensorFocusControllerImpl;[F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 55
    const-string/jumbo v0, "Sensor AF Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 34
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    .line 53
    return-void
.end method

.method private canSensorFocus(Z)Z
    .locals 7
    .param p1, "checkTouch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 64
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_0

    .line 65
    return v6

    .line 68
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    return v6

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    return v6

    .line 76
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 77
    return v6

    .line 80
    :cond_3
    invoke-static {}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 101
    :cond_4
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 83
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_4

    .line 84
    return v6

    .line 88
    :pswitch_2
    invoke-static {}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 95
    return v6

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 8
    .param p1, "values"    # [F

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v3

    aget v2, p1, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v5

    aget v2, p1, v5

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 145
    .local v0, "isMoved":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    const/4 v2, 0x3

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    if-eqz v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    .line 137
    :cond_1
    :goto_1
    return-void

    .line 142
    .end local v0    # "isMoved":Z
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v6

    aget v2, p1, v6

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isMoved":Z
    goto :goto_0

    .end local v0    # "isMoved":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isMoved":Z
    goto :goto_0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_5

    .line 152
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_1
.end method

.method private resetAfState()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 168
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    return-void
.end method

.method private startAutoFocus()Z
    .locals 1

    .prologue
    .line 326
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

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 331
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v1, :cond_0

    .line 332
    return v7

    .line 335
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 336
    return v6

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    return v6

    .line 343
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->canSensorFocus(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Cannot sensor focus"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return v7

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v2, :cond_4

    .line 352
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Focus mode is manual, skip sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v2, :cond_5

    .line 355
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 354
    if-eqz v1, :cond_5

    .line 357
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Already performing continuous AF, skip sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return v6

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v1, :cond_6

    .line 364
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Reset AE"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v2, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v8}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v2, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 367
    iput-boolean v7, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v2, 0x2

    invoke-interface {v1, v8, v2}, Lcom/oneplus/camera/FocusController;->startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 377
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Fail to start sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return v7

    .line 371
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Reset AE later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-boolean v6, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    goto :goto_0

    .line 384
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_7
    const/16 v1, 0x271a

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 387
    return v6
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 113
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Touch timeout, restart sensor focus"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    goto :goto_0

    .line 109
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
    .line 177
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 180
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 181
    const-class v1, Lcom/oneplus/camera/ExposureController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$1;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 208
    const-class v1, Lcom/oneplus/camera/FocusController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 256
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    sget-object v2, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/SensorFocusControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$3;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 270
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$4;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 278
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$5;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 293
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$6;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 307
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$7;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 174
    return-void
.end method
