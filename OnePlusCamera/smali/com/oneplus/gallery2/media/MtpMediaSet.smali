.class public abstract Lcom/oneplus/gallery2/media/MtpMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "MtpMediaSet.java"


# instance fields
.field private final m_Device:Landroid/hardware/usb/UsbDevice;

.field private final m_DeviceId:I

.field private final m_Type:Lcom/oneplus/gallery2/media/MediaSet$Type;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MediaSet$Type;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p4}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 26
    iput-object p2, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_Type:Lcom/oneplus/gallery2/media/MediaSet$Type;

    .line 27
    iput-object p3, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_Device:Landroid/hardware/usb/UsbDevice;

    .line 28
    invoke-virtual {p3}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_DeviceId:I

    .line 29
    return-void
.end method


# virtual methods
.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_Device:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_DeviceId:I

    return v0
.end method

.method public final getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_Type:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MtpMedia;

    if-nez v0, :cond_0

    .line 74
    return v2

    .line 73
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/MtpMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MtpMedia;->getDeviceId()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSet;->m_DeviceId:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
