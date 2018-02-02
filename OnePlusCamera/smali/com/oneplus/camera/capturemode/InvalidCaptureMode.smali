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
    .line 10
    invoke-direct {p0}, Lcom/oneplus/camera/InvalidMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSimpleCaptureMode()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
