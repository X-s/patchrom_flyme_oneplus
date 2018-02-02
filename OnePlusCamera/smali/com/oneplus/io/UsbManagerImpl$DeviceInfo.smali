.class final Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/UsbManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfo"
.end annotation


# instance fields
.field public volatile connection:Landroid/hardware/usb/UsbDeviceConnection;

.field public final device:Landroid/hardware/usb/UsbDevice;

.field public final openHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final permissionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    .line 54
    return-void
.end method
