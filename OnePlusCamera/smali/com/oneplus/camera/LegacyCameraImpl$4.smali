.class Lcom/oneplus/camera/LegacyCameraImpl$4;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


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
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-get0(Lcom/oneplus/camera/LegacyCameraImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError - errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraEventArgs;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$4;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {v2, v3}, Lcom/oneplus/camera/CameraEventArgs;-><init>(Lcom/oneplus/camera/Camera;)V

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap13(Lcom/oneplus/camera/LegacyCameraImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 177
    return-void
.end method
