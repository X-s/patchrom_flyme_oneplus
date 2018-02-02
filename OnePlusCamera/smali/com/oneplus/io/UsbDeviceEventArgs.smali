.class public Lcom/oneplus/io/UsbDeviceEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "UsbDeviceEventArgs.java"


# instance fields
.field private final m_Device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/io/UsbDeviceEventArgs;->m_Device:Landroid/hardware/usb/UsbDevice;

    .line 20
    return-void
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/io/UsbDeviceEventArgs;->m_Device:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method
