.class public Lcom/oneplus/camera/capturemode/VideoCaptureMode;
.super Lcom/oneplus/camera/capturemode/SimpleCaptureMode;
.source "VideoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/capturemode/VideoCaptureMode$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I


# instance fields
.field private final m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->SWITCH_MODE_LARGE_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/capturemode/VideoCaptureMode;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->onPrepareAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 38
    const-string/jumbo v0, "Video"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "Video"

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/oneplus/camera/capturemode/VideoCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode$1;-><init>(Lcom/oneplus/camera/capturemode/VideoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    .line 47
    return-void
.end method

.method private onPrepareAdvancedSettings(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 103
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "IsVideFrameRateVisible"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 65
    invoke-static {}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 3
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/VideoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 91
    :cond_0
    return-void
.end method
