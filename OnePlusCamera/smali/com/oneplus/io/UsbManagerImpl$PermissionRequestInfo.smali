.class final Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/UsbManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionRequestInfo"
.end annotation


# instance fields
.field private final callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

.field private final callbackHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;)Lcom/oneplus/io/UsbManager$PermissionCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    return-object v0
.end method

.method public constructor <init>(Lcom/oneplus/io/UsbManager$PermissionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/io/UsbManager$PermissionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    .line 72
    iput-object p2, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method public callOnRejected(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo$1;-><init>(Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/io/UsbManager$PermissionCallback;->onPermissionRejected(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0
.end method

.method public callOnRequested(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo$2;-><init>(Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callback:Lcom/oneplus/io/UsbManager$PermissionCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/io/UsbManager$PermissionCallback;->onPermissionRequested(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0
.end method
