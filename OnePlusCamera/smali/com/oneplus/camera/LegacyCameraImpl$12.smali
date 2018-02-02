.class Lcom/oneplus/camera/LegacyCameraImpl$12;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z
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
    .line 935
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$12;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 941
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onDngImage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 943
    aget-object v2, p3, v6

    check-cast v2, [B

    .line 944
    .local v2, "data":[B
    aget-object v0, p3, v7

    check-cast v0, Landroid/hardware/Camera;

    .line 945
    .local v0, "camera":Landroid/hardware/Camera;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl$12;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v4, v2, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap7(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V

    .line 954
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v2    # "data":[B
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 947
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onDngMetadata"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    aget-object v1, p3, v6

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 950
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    aget-object v3, p3, v7

    check-cast v3, Landroid/hardware/camera2/CaptureResult;

    .line 951
    .local v3, "result":Landroid/hardware/camera2/CaptureResult;
    const/4 v4, 0x2

    aget-object v0, p3, v4

    check-cast v0, Landroid/hardware/Camera;

    .line 952
    .restart local v0    # "camera":Landroid/hardware/Camera;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl$12;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v4, v1, v3, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap8(Lcom/oneplus/camera/LegacyCameraImpl;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    goto :goto_0
.end method
