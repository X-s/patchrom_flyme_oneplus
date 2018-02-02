.class public final Lcom/oneplus/camera/panorama/PanoramaCaptureMode;
.super Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;
.source "PanoramaCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/oneplus/camera/panorama/PanoramaUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I


# direct methods
.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 17
    const-string/jumbo v2, "Panorama"

    const-string/jumbo v3, "panorama"

    const-class v4, Lcom/oneplus/camera/panorama/PanoramaUI;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/oneplus/camera/media/MediaType;)V

    .line 18
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 15
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 33
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
