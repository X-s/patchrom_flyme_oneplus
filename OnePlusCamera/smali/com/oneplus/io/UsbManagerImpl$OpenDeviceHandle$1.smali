.class Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;
.super Ljava/lang/Object;
.source "UsbManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callOnFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;->this$1:Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;->this$1:Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-static {v0}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->-get0(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)Lcom/oneplus/io/UsbManager$OpenDeviceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle$1;->this$1:Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-static {v1}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->-get1(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/io/UsbManager$OpenDeviceCallback;->onFailed(Landroid/hardware/usb/UsbDevice;)V

    .line 144
    return-void
.end method
