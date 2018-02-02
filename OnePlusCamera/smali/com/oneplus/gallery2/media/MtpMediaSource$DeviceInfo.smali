.class final Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;
.super Ljava/lang/Object;
.source "MtpMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfo"
.end annotation


# instance fields
.field public connection:Landroid/hardware/usb/UsbDeviceConnection;

.field public final device:Landroid/hardware/usb/UsbDevice;

.field public final deviceId:I

.field public deviceOpenHandle:Lcom/oneplus/base/Handle;

.field public final deviceSerialNumber:Ljava/lang/String;

.field public isPermissionReady:Z

.field public isRequestingPermission:Z

.field public final mediaObtainHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mtpDevice:Landroid/mtp/MtpDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->mediaObtainHandles:Ljava/util/Map;

    .line 131
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    .line 132
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->deviceId:I

    .line 133
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->deviceSerialNumber:Ljava/lang/String;

    .line 134
    return-void
.end method
