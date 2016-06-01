.class Lcom/oneplus/camera/CameraImpl$10;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
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
    .line 1782
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$10;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$10;->this$0:Lcom/oneplus/camera/CameraImpl;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraImpl;->access$1800(Lcom/oneplus/camera/CameraImpl;I)Z

    .line 1787
    return-void
.end method
