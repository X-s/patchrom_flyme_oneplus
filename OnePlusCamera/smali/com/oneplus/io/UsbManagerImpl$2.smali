.class Lcom/oneplus/io/UsbManagerImpl$2;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/UsbManagerImpl;->onDeviceOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/io/UsbManagerImpl;

.field final synthetic val$connection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method constructor <init>(Lcom/oneplus/io/UsbManagerImpl;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/io/UsbManagerImpl;
    .param p2, "val$connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$2;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    iput-object p2, p0, Lcom/oneplus/io/UsbManagerImpl$2;->val$connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$2;->val$connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$2;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v1}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDeviceOpened() - Fail to close device"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
