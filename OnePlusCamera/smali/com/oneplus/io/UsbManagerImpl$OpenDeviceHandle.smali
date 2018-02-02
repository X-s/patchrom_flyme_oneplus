.class final Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;
.super Lcom/oneplus/base/Handle;
.source "UsbManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/UsbManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenDeviceHandle"
.end annotation


# instance fields
.field private final callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

.field private final callbackHandler:Landroid/os/Handler;

.field private final device:Landroid/hardware/usb/UsbDevice;

.field final synthetic this$0:Lcom/oneplus/io/UsbManagerImpl;


# direct methods
.method static synthetic -get0(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)Lcom/oneplus/io/UsbManager$OpenDeviceCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->device:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public constructor <init>(Lcom/oneplus/io/UsbManagerImpl;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$OpenDeviceCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/io/UsbManagerImpl;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "callback"    # Lcom/oneplus/io/UsbManager$OpenDeviceCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    .line 128
    const-string/jumbo v0, "Open USB device"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 129
    iput-object p2, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->device:Landroid/hardware/usb/UsbDevice;

    .line 130
    iput-object p3, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    .line 131
    iput-object p4, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method


# virtual methods
.method public callOnFailed()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;

    invoke-direct {v1, p0}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;-><init>(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->device:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v0, v1}, Lcom/oneplus/io/UsbManager$OpenDeviceCallback;->onFailed(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0
.end method

.method public callOnOpened(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$2;-><init>(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callback:Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->device:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/io/UsbManager$OpenDeviceCallback;->onOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    goto :goto_0
.end method

.method public complete()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->closeDirectly()V

    .line 175
    return-void
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->this$0:Lcom/oneplus/io/UsbManagerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/io/UsbManagerImpl;->-wrap0(Lcom/oneplus/io/UsbManagerImpl;Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V

    .line 181
    return-void
.end method
