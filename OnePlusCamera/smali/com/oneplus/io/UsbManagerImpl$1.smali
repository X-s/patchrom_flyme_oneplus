.class Lcom/oneplus/io/UsbManagerImpl$1;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/UsbManagerImpl;->closeDevice(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/io/UsbManagerImpl;

.field final synthetic val$connection:Landroid/hardware/usb/UsbDeviceConnection;

.field final synthetic val$deviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/io/UsbManagerImpl;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/io/UsbManagerImpl;
    .param p2, "val$deviceName"    # Ljava/lang/String;
    .param p3, "val$connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$1;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    iput-object p2, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$1;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v1}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeDevice() - Close connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 215
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$1;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v1}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeDevice() - Close connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [end]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$1;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v1}, Lcom/oneplus/io/UsbManagerImpl;->-get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeDevice() - Fail to close connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
