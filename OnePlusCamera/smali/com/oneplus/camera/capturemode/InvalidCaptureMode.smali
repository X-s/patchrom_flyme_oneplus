.class Lcom/oneplus/camera/capturemode/InvalidCaptureMode;
.super Lcom/oneplus/camera/InvalidMode;
.source "InvalidCaptureMode.java"

# interfaces
.implements Lcom/oneplus/camera/capturemode/CaptureMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/InvalidMode",
        "<",
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;",
        "Lcom/oneplus/camera/capturemode/CaptureMode;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/camera/InvalidMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSimpleCaptureMode()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
