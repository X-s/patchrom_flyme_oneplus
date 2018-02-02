.class Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;
.super Ljava/lang/Object;
.source "MtpMediaSetManager.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/io/UsbDeviceEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/oneplus/base/EventKey;

    check-cast p3, Lcom/oneplus/io/UsbDeviceEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/io/UsbDeviceEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/io/UsbDeviceEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ">;",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    invoke-virtual {p3}, Lcom/oneplus/io/UsbDeviceEventArgs;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->access$3(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Landroid/hardware/usb/UsbDevice;)V

    .line 42
    return-void
.end method
