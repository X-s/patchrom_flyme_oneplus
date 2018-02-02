.class Lcom/oneplus/io/UsbManagerImpl$4;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/UsbManagerImpl;->openDevice(Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$OpenDeviceCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/io/UsbManagerImpl;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;

.field final synthetic val$deviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/io/UsbManagerImpl;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/io/UsbManagerImpl;
    .param p2, "val$deviceName"    # Ljava/lang/String;
    .param p3, "val$device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    iput-object p2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 517
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v2}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDevice() - Open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [start]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v2}, Lcom/oneplus/io/UsbManagerImpl;->-get1(Lcom/oneplus/io/UsbManagerImpl;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 519
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v2}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDevice() - Open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [end]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$device:Landroid/hardware/usb/UsbDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/16 v4, 0x2710

    invoke-static {v2, v4, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 512
    return-void

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl$4;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v2}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDevice() - Fail to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/io/UsbManagerImpl$4;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    const/4 v0, 0x0

    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    goto :goto_0
.end method
