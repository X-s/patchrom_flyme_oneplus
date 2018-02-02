.class public abstract Lcom/oneplus/camera/capturemode/BasicCaptureMode;
.super Lcom/oneplus/camera/BasicMode;
.source "BasicCaptureMode.java"

# interfaces
.implements Lcom/oneplus/camera/capturemode/CaptureMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/BasicMode",
        "<",
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;",
        "Lcom/oneplus/camera/capturemode/CaptureMode;"
    }
.end annotation


# instance fields
.field private m_CustomSettings:Lcom/oneplus/base/Settings;

.field private final m_CustomSettingsName:Ljava/lang/String;

.field private m_IsCustomSettingsReady:Z

.field private m_MediaType:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "customSettingsName"    # Ljava/lang/String;
    .param p4, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/BasicMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 28
    return-void
.end method


# virtual methods
.method public getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public getCustomSettings()Lcom/oneplus/base/Settings;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->verifyAccess()V

    .line 41
    iget-boolean v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/base/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSimpleCaptureMode()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/base/Settings;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 88
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v1

    .line 90
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    return-object v1
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 102
    iput-object v1, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/BasicMode;->onRelease()V

    .line 96
    return-void
.end method
