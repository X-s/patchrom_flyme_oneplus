.class Lcom/oneplus/camera/CameraImpl$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$2;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$2;->this$0:Lcom/oneplus/camera/CameraImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/oneplus/camera/CameraImpl;->access$400(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V

    .line 127
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$2;->this$0:Lcom/oneplus/camera/CameraImpl;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/camera/CameraImpl;->access$400(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V

    .line 121
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$2;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->access$300(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;)V

    .line 115
    return-void
.end method
