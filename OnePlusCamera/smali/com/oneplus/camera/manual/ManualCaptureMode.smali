.class public final Lcom/oneplus/camera/manual/ManualCaptureMode;
.super Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;
.source "ManualCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I = null

.field public static final ENABLE_MANUAL_MODE:Z = true

.field public static final MANUAL_CAPTURE_MODE_SETTING_NAME:Ljava/lang/String; = "manual"


# instance fields
.field private m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/manual/ManualCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/manual/ManualCaptureMode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualCaptureMode;->disable()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 6
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 41
    const-string/jumbo v2, "Manual"

    const-class v4, Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/oneplus/camera/media/MediaType;)V

    .line 42
    sget-object v0, Lcom/oneplus/camera/manual/ManualCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/manual/ManualCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ManualCaptureMode$1;-><init>(Lcom/oneplus/camera/manual/ManualCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 67
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/manual/ManualCaptureMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ManualCaptureMode$2;-><init>(Lcom/oneplus/camera/manual/ManualCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 102
    invoke-static {}, Lcom/oneplus/camera/manual/ManualCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/base/Settings;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCaptureMode;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualCaptureMode;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCaptureMode;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCaptureMode;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getManualSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    return-object v2
.end method
