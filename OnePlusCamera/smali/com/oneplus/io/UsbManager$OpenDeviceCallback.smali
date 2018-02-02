.class public interface abstract Lcom/oneplus/io/UsbManager$OpenDeviceCallback;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpenDeviceCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
.end method
