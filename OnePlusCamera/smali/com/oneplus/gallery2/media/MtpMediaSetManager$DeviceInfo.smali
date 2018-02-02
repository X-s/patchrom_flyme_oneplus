.class final Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;
.super Ljava/lang/Object;
.source "MtpMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceInfo"
.end annotation


# instance fields
.field public final device:Landroid/hardware/usb/UsbDevice;

.field public final deviceId:I

.field public final ptpCameraRollMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    .line 81
    iput-object p2, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    .line 82
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->deviceId:I

    .line 83
    return-void
.end method
