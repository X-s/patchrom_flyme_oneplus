.class Lcom/oneplus/camera/LegacyCameraImpl$4;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # getter for: Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->access$000(Lcom/oneplus/camera/LegacyCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # invokes: Lcom/oneplus/camera/LegacyCameraImpl;->onFaceDetection([Landroid/hardware/Camera$Face;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->access$400(Lcom/oneplus/camera/LegacyCameraImpl;[Landroid/hardware/Camera$Face;)V

    .line 143
    :cond_0
    return-void
.end method
