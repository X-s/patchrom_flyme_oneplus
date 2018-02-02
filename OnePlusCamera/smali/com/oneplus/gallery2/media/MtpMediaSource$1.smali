.class Lcom/oneplus/gallery2/media/MtpMediaSource$1;
.super Ljava/lang/Object;
.source "MtpMediaSource.java"

# interfaces
.implements Lcom/oneplus/io/UsbManager$OpenDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MtpMediaSource;->access$1(Lcom/oneplus/gallery2/media/MtpMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to open device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/media/MtpMediaSource;->access$0(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 90
    return-void
.end method
