.class public Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;
.super Lcom/oneplus/gallery2/media/MtpMediaSet;
.source "PtpCameraRollMediaSet.java"


# instance fields
.field private final m_Id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery2/media/MtpMediaSet;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MediaSet$Type;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PTP-CameraRoll/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->m_Id:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->updateName()V

    .line 26
    return-void
.end method

.method private updateName()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "media_set_name_camera_roll"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    if-gtz v1, :cond_0

    const-string/jumbo v0, "Camera"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " ("

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ")"

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v0, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 79
    return-void

    .line 70
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MtpMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 51
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;->updateName()V

    .line 52
    return-void
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
