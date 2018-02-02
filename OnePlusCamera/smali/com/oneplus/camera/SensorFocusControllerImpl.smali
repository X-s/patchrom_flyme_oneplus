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
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

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

.field private m_IsAFRegionResetNeeded:Z

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

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/PhotoCaptureState;->values()[Lcom/oneplus/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

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

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

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

.method static synthetic -set4(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/SensorFocusControllerImpl;J)J
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
    .line 58
    const-string/jumbo v0, "Sensor AF Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 36
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    .line 56
    return-void
.end method

.method private canSensorFocus(Z)Z
    .locals 7
    .param p1, "checkTouch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 67
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_0

    .line 68
    return v6

    .line 71
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    return v6

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    return v6

    .line 79
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 80
    return v6

    .line 83
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

    .line 113
    :cond_4
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 86
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 95
    return v6

    .line 89
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    return v6

    .line 100
    :pswitch_3
    invoke-static {}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    .line 107
    return v6

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 86
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 100
    :pswitch_data_2
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
    const/4 v7, 0x2

    const/16 v6, 0x2710

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v3

    aget v2, p1, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-gez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v4

    aget v2, p1, v4

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    .line 154
    :cond_0
    const/4 v0, 0x1

    .line 159
    .local v0, "isMoved":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    const/4 v2, 0x3

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    if-eqz v0, :cond_4

    .line 164
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onAccelerometerValuesChanged() - isMoved"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-boolean v4, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    .line 166
    iput-boolean v4, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 167
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    .line 151
    :cond_1
    :goto_1
    return-void

    .line 156
    .end local v0    # "isMoved":Z
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastAccelerometerValues:[F

    aget v1, v1, v7

    aget v2, p1, v7

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isMoved":Z
    goto :goto_0

    .end local v0    # "isMoved":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isMoved":Z
    goto :goto_0

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_5

    .line 171
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v2, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_1
.end method

.method private resetAfState()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    return-void
.end method

.method private startAutoFocus()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z

    move-result v0

    return v0
.end method

.method private startAutoFocus(Z)Z
    .locals 10
    .param p1, "checkTouch"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 394
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v1, :cond_0

    .line 395
    return v9

    .line 398
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_LastTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 399
    return v8

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    return v8

    .line 406
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->canSensorFocus(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 407
    return v9

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v3, :cond_4

    .line 412
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAutoFocus() - Focus mode is manual, skip sensor AF"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v1, v3, :cond_5

    .line 415
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 414
    if-eqz v1, :cond_5

    .line 417
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Already performing continuous AF, skip sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return v8

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v1, :cond_8

    .line 425
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAutoFocus() - No need to reset AE again"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_6
    :goto_0
    iput-boolean v9, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 446
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    iget-boolean v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    if-eqz v1, :cond_9

    move-object v1, v2

    :goto_2
    const/4 v2, 0x2

    invoke-interface {v3, v1, v2}, Lcom/oneplus/camera/FocusController;->startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 447
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iput-boolean v9, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    .line 449
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 451
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAutoFocus() - Fail to start sensor AF"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v9

    .line 429
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_7
    iget-boolean v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    if-eqz v1, :cond_6

    .line 431
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAutoFocus() - Reset AE"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 434
    iput-boolean v8, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    goto :goto_0

    .line 441
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAutoFocus() - Reset AE later"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iput-boolean v8, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    goto :goto_1

    .line 446
    :cond_9
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 456
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_a
    const/16 v1, 0x271a

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 459
    return v8
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 125
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    iput-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_AfState:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    goto :goto_0

    .line 135
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Touch timeout, restart sensor focus"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-boolean v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAFRegionResetNeeded:Z

    .line 137
    iput-boolean v2, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z

    .line 138
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->resetAfState()V

    .line 139
    invoke-direct {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->startAutoFocus()Z

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 199
    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 200
    const-class v1, Lcom/oneplus/camera/ExposureController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$1;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 236
    const-class v1, Lcom/oneplus/camera/FocusController;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 295
    invoke-virtual {p0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 296
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl;->m_TouchAutoFocusUI:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    sget-object v2, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/SensorFocusControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$3;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 310
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$4;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 318
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$5;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 334
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$6;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 352
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$7;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 368
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$8;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 193
    return-void
.end method
