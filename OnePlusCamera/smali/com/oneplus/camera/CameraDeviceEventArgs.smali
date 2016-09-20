.class public Lcom/oneplus/camera/CameraDeviceEventArgs;
.super Lcom/oneplus/camera/CameraIdEventArgs;
.source "CameraDeviceEventArgs.java"


# instance fields
.field private final m_CameraDevice:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraIdEventArgs;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/CameraDeviceEventArgs;->m_CameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 22
    return-void
.end method


# virtual methods
.method public final getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/camera/CameraDeviceEventArgs;->m_CameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method
