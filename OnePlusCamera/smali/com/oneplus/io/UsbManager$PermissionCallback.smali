.class public interface abstract Lcom/oneplus/io/UsbManager$PermissionCallback;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionCallback"
.end annotation


# virtual methods
.method public abstract onPermissionRejected(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onPermissionRequested(Landroid/hardware/usb/UsbDevice;)V
.end method
