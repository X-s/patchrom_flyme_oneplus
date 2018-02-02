.class final Lcom/oneplus/camera/ui/TouchFocusExposureUI;
.super Lcom/oneplus/camera/CameraComponent;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/camera/ui/TouchAutoFocusUI;
.implements Lcom/oneplus/camera/ui/TouchAutoExposureUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-FocusStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

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
.method static synthetic -get0(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-FocusStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FocusState;->values()[Lcom/oneplus/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

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

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/ui/MotionEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->unlockFocusAndExposure()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/base/ScreenSize;)V
    .locals 0
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 75
    const-string/jumbo v0, "Touch AE/AF UI"

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

    .line 73
    return-void
.end method

.method private bindToExposureController()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_0

    .line 83
    return v1

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

    return v0

    .line 88
    :cond_1
    return v1
.end method

.method private bindToFocusController()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_0

    .line 96
    return v3

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

    return v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 108
    return v3
.end method

.method private canTouchFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 117
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_0

    .line 118
    return v3

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

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_1

    .line 122
    return v3

    .line 125
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 146
    :cond_2
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 128
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_2

    .line 129
    return v3

    .line 133
    :pswitch_2
    invoke-static {}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 140
    return v3

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

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "lockFocusAndExposure() - Capture is not ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchFocusHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "lockFocusAndExposure() - Self timer started, returned"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockFocusAndExposure() - Disable exposure handle counts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_DisableTouchExposureHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", disable focus handle counts: "

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

    .line 218
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "lockFocusAndExposure()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ExposureController;->lockAutoExposure(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    .line 207
    :cond_4
    return-void
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 8
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    const-wide/16 v6, 0x0

    .line 242
    invoke-static {}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 249
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v3, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v2, v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 249
    if-eqz v2, :cond_0

    .line 251
    iget-wide v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 252
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    if-nez v2, :cond_0

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    sub-long v0, v4, v2

    .line 255
    .local v0, "delay":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFocusStateChanged() - Start AE/AF lock timer : "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFocusStateChanged() - Lock AE/AF immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->lockFocusAndExposure()V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
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

    .line 330
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 332
    :cond_0
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_IsPointerUppedWhenFocusScanning:Z

    .line 333
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    return-void

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch() - Down"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 344
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

    .line 346
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch() - Cannot point to preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 350
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 351
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 357
    .end local v2    # "focusCenter":Landroid/graphics/PointF;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 359
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 360
    .local v0, "diffX":F
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 361
    .local v1, "diffY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    iget v5, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/MotionEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 369
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch() - Cancel"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 376
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch() - Up"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    sget-object v3, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;)V

    .line 383
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 338
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
    .line 392
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchDownPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 390
    return-void
.end method

.method private triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V
    .locals 18
    .param p1, "type"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->bindToFocusController()Z

    move-result v7

    if-nez v7, :cond_0

    .line 398
    return-void

    .line 399
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->canTouchFocus()Z

    move-result v7

    if-nez v7, :cond_1

    .line 400
    return-void

    .line 401
    :cond_1
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_2

    const/4 v7, 0x0

    cmpg-float v7, p3, v7

    if-gez v7, :cond_3

    .line 402
    :cond_2
    return-void

    .line 403
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x12c

    cmp-long v7, v14, v16

    if-gez v7, :cond_4

    .line 404
    return-void

    .line 407
    :cond_4
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 408
    .local v10, "center":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    .line 409
    .local v9, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v9}, Lcom/oneplus/camera/CameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v7

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v7, v0, v1, v10, v13}, Lcom/oneplus/camera/ui/Viewfinder;->pointToPreview(FFLandroid/graphics/PointF;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 410
    return-void

    .line 411
    :cond_5
    iget v7, v10, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e000000    # 0.125f

    sub-float v3, v7, v13

    .line 412
    .local v3, "left":F
    iget v7, v10, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3e000000    # 0.125f

    sub-float v4, v7, v13

    .line 413
    .local v4, "top":F
    const/high16 v7, 0x3e800000    # 0.25f

    add-float v5, v3, v7

    .line 414
    .local v5, "right":F
    const/high16 v7, 0x3e800000    # 0.25f

    add-float v6, v4, v7

    .line 415
    .local v6, "bottom":F
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_6

    .line 416
    const/4 v3, 0x0

    .line 417
    :cond_6
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    .line 418
    const/4 v4, 0x0

    .line 419
    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    .line 420
    const/high16 v5, 0x3f800000    # 1.0f

    .line 421
    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    .line 422
    const/high16 v6, 0x3f800000    # 1.0f

    .line 423
    :cond_9
    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 424
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v8, :cond_a

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v7, v13, :cond_a

    .line 426
    move v12, v3

    .line 427
    .local v12, "tempLeft":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v5

    .line 428
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v12

    .line 430
    .end local v12    # "tempLeft":F
    :cond_a
    new-instance v2, Lcom/oneplus/camera/Camera$MeteringRect;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/Camera$MeteringRect;-><init>(FFFFF)V

    .line 431
    .local v2, "rect":Lcom/oneplus/camera/Camera$MeteringRect;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/oneplus/camera/Camera$MeteringRect;

    const/4 v13, 0x0

    aput-object v2, v7, v13

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 434
    .local v11, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->unlockFocusAndExposure()V

    .line 437
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-eq v0, v7, :cond_b

    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_d

    .line 440
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->bindToExposureController()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 442
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v13, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 443
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v13, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v13, v11}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 447
    :cond_c
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->EVENT_TOUCH_AE:Lcom/oneplus/base/EventKey;

    sget-object v13, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 451
    :cond_d
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-eq v0, v7, :cond_e

    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_10

    .line 454
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    .line 457
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v13, 0x1

    invoke-interface {v7, v11, v13}, Lcom/oneplus/camera/FocusController;->startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    .line 458
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 460
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "startAutoFocus() - Fail to start touch AF"

    invoke-static {v7, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void

    .line 465
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_LastAFTriggeredTime:J

    .line 468
    sget-object v7, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    sget-object v13, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 394
    :cond_10
    return-void
.end method

.method private unlockFocusAndExposure()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_ExposureLockHandle:Lcom/oneplus/base/Handle;

    .line 516
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 513
    return-void
.end method

.method private updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 524
    .local v0, "length":I
    int-to-float v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfDistanceThreshold:F

    .line 521
    return-void
.end method


# virtual methods
.method public disableTouchLockExposure()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$2;

    const-string/jumbo v1, "Disable Touch Lock Exposure"

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

    const-string/jumbo v1, "Disable Touch Lock Focus"

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

    .line 187
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
    .line 276
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 280
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 290
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 299
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$6;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 308
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/TouchFocusExposureUI$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$7;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->updateDistanceThresholds(Lcom/oneplus/base/ScreenSize;)V

    .line 273
    return-void
.end method

.method public touchAutoExposure(FF)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "cX"    # F
    .param p2, "cY"    # F

    .prologue
    .line 485
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 486
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;

    const-string/jumbo v1, "Touch exposure"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;-><init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Ljava/lang/String;)V

    return-object v0
.end method

.method public touchAutoExposure(Landroid/graphics/PointF;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "touchPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 477
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
    .line 507
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->triggerFocusExposure(Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;FF)V

    .line 508
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->m_TouchAfHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public touchAutoFocus(Landroid/graphics/PointF;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "touchPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 499
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
