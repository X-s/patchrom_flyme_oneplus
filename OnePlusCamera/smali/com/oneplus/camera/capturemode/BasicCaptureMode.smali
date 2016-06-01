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
.field private m_CustomSettings:Lcom/oneplus/camera/Settings;

.field private final m_CustomSettingsName:Ljava/lang/String;

.field private m_IsCustomSettingsReady:Z


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/BasicMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCustomSettings()Lcom/oneplus/camera/Settings;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->verifyAccess()V

    .line 36
    iget-boolean v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/camera/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/camera/Settings;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/camera/Settings;

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/camera/Settings;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 55
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/oneplus/camera/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/camera/Settings;

    invoke-virtual {v0}, Lcom/oneplus/camera/Settings;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/camera/Settings;

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/BasicMode;->onRelease()V

    .line 74
    return-void
.end method
